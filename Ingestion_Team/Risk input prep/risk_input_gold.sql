h-- =========================================================
-- GOLD TABLE: patient_risk_inputs
-- BUSINESS MEANING:
-- Prepares explainable healthcare risk indicators at
-- patient level for analytics and future modeling.
-- =========================================================

CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.patient_risk_inputs AS
SELECT
  p.patient_id,

  -- Age risk indicator
  CASE
    WHEN YEAR(current_date()) - YEAR(p.birth_date) >= 60 THEN 1
    ELSE 0
  END AS age_risk_flag,

  -- Encounter frequency
  COUNT(DISTINCT e.encounter_id) AS total_encounters,

  CASE
    WHEN COUNT(DISTINCT e.encounter_id) >= 3 THEN 1
    ELSE 0
  END AS frequent_encounter_flag,

  -- Chronic condition indicator
  CASE
    WHEN COUNT(DISTINCT c.condition_id) >= 1 THEN 1
    ELSE 0
  END AS chronic_condition_flag,

  -- Observation volume
  COUNT(DISTINCT o.observation_id) AS total_observations

FROM angad_kumar91.fhir_healthcare_analytics_silver.patient p
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_silver.encounter e
  ON p.patient_id = e.patient_id
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_silver.condition c
  ON p.patient_id = c.patient_id
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_silver.observation o
  ON p.patient_id = o.patient_id

GROUP BY
  p.patient_id,
  p.birth_date;
