-- ======================================
-- Admissions Trend Dashboard Query
-- ======================================
SELECT
  admission_date,
  total_admissions
FROM angad_kumar91.fhir_healthcare_analytics_gold.admissions_analytics
ORDER BY admission_date;


-- ======================================
-- Patient Overview Dashboard Query
-- ======================================
SELECT
  patient_id,
  gender,
  birth_date,
  encounter_id,
  start_date,
  end_date
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary;


-- ======================================
-- Disease Breakdown Dashboard Query
-- ======================================
SELECT
  diagnosis_code,
  diagnosis_description,
  patient_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.disease_breakdown
ORDER BY patient_count DESC;


-- ======================================
-- Risk Monitoring Dashboard Query
-- ======================================
SELECT
  patient_id,
  age_risk_flag,
  frequent_encounter_flag,
  chronic_condition_flag
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_risk_inputs;
