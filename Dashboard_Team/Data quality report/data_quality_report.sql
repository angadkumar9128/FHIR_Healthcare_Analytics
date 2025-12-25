-- =====================================================
-- Dashboard Team: Data Quality Report
-- Layers: Silver & Gold
-- Rule: Queries return rows ONLY if issues exist
-- =====================================================

-- ===============================
-- 1. NULL CHECKS (Gold Layer)
-- ===============================

-- Missing patient_id in patient summary
SELECT *
FROM fhir_healthcare_analytics_gold.patient_encounter_summary
WHERE patient_id IS NULL;

-- Missing admission dates
SELECT *
FROM fhir_healthcare_analytics_gold.admissions_analytics
WHERE admission_date IS NULL;

-- Missing diagnosis codes
SELECT *
FROM fhir_healthcare_analytics_gold.disease_breakdown
WHERE diagnosis_code IS NULL;

-- ===============================
-- 2. NEGATIVE / INVALID VALUES
-- ===============================

-- Negative claim cost
SELECT *
FROM fhir_healthcare_analytics_gold.patient_encounter_summary
WHERE total_claim_cost < 0;

-- Negative length of stay
SELECT *
FROM fhir_healthcare_analytics_gold.admissions_analytics
WHERE length_of_stay < 0;

-- ===============================
-- 3. RISK SCORE BOUNDARY CHECKS
-- ===============================

SELECT *
FROM fhir_healthcare_analytics_gold.risk_scores
WHERE risk_score < 0
   OR risk_score > 100;

-- ===============================
-- 4. DATE CONSISTENCY CHECKS
-- ===============================

-- Discharge before admission
SELECT *
FROM fhir_healthcare_analytics_gold.admissions_analytics
WHERE discharge_date < admission_date;

-- Future-dated admissions
SELECT *
FROM fhir_healthcare_analytics_gold.admissions_analytics
WHERE admission_date > CURRENT_DATE();

-- ===============================
-- 5. DUPLICATE RECORD CHECKS
-- ===============================

-- Duplicate patient records
SELECT patient_id, COUNT(*) AS record_count
FROM fhir_healthcare_analytics_gold.patient_encounter_summary
GROUP BY patient_id
HAVING COUNT(*) > 1;

-- Duplicate encounter records
SELECT encounter_id, COUNT(*) AS record_count
FROM fhir_healthcare_analytics_gold.admissions_analytics
GROUP BY encounter_id
HAVING COUNT(*) > 1;

-- ===============================
-- 6. REFERENTIAL INTEGRITY
-- ===============================

-- Encounters without matching patients
SELECT a.encounter_id, a.patient_id
FROM fhir_healthcare_analytics_gold.admissions_analytics a
LEFT JOIN fhir_healthcare_analytics_gold.patient_encounter_summary p
  ON a.patient_id = p.patient_id
WHERE p.patient_id IS NULL;

-- Diseases without valid patients
SELECT d.patient_id
FROM fhir_healthcare_analytics_gold.disease_breakdown d
LEFT JOIN fhir_healthcare_analytics_gold.patient_encounter_summary p
  ON d.patient_id = p.patient_id
WHERE p.patient_id IS NULL;
