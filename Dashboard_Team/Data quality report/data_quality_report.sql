-- =========================================================
-- DASHBOARD TEAM : DATA QUALITY REPORT
-- Catalog : angad_kumar91
-- Schemas: fhir_healthcare_analytics_gold
--          fhir_healthcare_analytics_silver
-- Rule   : Queries return rows ONLY if data issues exist
-- =========================================================


-- =========================================================
-- GOLD LAYER DATA QUALITY CHECKS
-- =========================================================


-- 1️⃣ patient_admissions – NULL & RANGE CHECKS
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions
WHERE admission_date IS NULL
   OR total_admissions IS NULL
   OR total_admissions < 0
   OR avg_length_of_stay < 0;


-- 2️⃣ cost_analysis – COST VALIDATION
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis
WHERE patient_id IS NULL
   OR encounter_id IS NULL
   OR total_cost IS NULL
   OR total_cost < 0;


-- 3️⃣ disease_patterns – PATIENT COUNT VALIDATION
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.disease_patterns
WHERE diagnosis IS NULL
   OR patient_count IS NULL
   OR patient_count < 0;


-- 4️⃣ patient_encounter_summary – IDENTIFIER CONSISTENCY
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary
WHERE patient_id IS NULL
   OR encounter_id IS NULL;


-- 5️⃣ DUPLICATE PATIENT–ENCOUNTER RECORDS
SELECT
  patient_id,
  encounter_id,
  COUNT(*) AS record_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary
GROUP BY patient_id, encounter_id
HAVING COUNT(*) > 1;


-- 6️⃣ FUTURE-DATED ADMISSIONS (LOGICAL CHECK)
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions
WHERE admission_date > CURRENT_DATE();


-- =========================================================
-- SILVER LAYER DATA QUALITY CHECKS
-- =========================================================


-- 7️⃣ patient – CORE DEMOGRAPHICS VALIDATION
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_silver.patient
WHERE patient_id IS NULL
   OR gender IS NULL
   OR birth_date IS NULL;


-- 8️⃣ encounter – ADMISSION CONSISTENCY
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_silver.encounter
WHERE encounter_id IS NULL
   OR patient_id IS NULL
   OR admit_time IS NULL;


-- 9️⃣ condition – DIAGNOSIS INTEGRITY
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_silver.condition
WHERE condition_id IS NULL
   OR patient_id IS NULL
   OR diagnosis IS NULL;


-- 🔟 explanation_of_benefit – CLAIM & COST VALIDATION
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_silver.explanation_of_benefit
WHERE claim_id IS NULL
   OR patient_id IS NULL
   OR total_amount < 0;


-- =========================================================
-- END OF DATA QUALITY REPORT
-- =========================================================
