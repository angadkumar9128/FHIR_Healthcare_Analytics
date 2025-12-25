-- ============================================
-- Dashboard Team: Dataset Understanding Queries
-- ============================================

-- 1. List all Gold tables available
SHOW TABLES IN fhir_healthcare_analytics_gold;

-- 2. Schema inspection: patient_encounter_summary
DESCRIBE TABLE fhir_healthcare_analytics_gold.patient_encounter_summary;

-- 3. Sample data review
SELECT *
FROM fhir_healthcare_analytics_gold.patient_encounter_summary
LIMIT 10;

-- 4. Admissions date range understanding
SELECT
  MIN(admission_date) AS earliest_admission,
  MAX(admission_date) AS latest_admission
FROM fhir_healthcare_analytics_gold.admissions_analytics;

-- 5. Disease distribution preview
SELECT
  diagnosis_description,
  COUNT(*) AS patient_count
FROM fhir_healthcare_analytics_gold.disease_breakdown
GROUP BY diagnosis_description
ORDER BY patient_count DESC
LIMIT 10;

-- 6. Risk band distribution
SELECT
  risk_band,
  COUNT(*) AS patient_count
FROM fhir_healthcare_analytics_gold.risk_scores
GROUP BY risk_band;
