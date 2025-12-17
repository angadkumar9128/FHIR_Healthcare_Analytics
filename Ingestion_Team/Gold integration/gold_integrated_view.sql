-- =========================================================
-- GOLD VIEW: patient_analytics_master
-- BUSINESS MEANING:
-- Unified patient-level analytics dataset combining
-- encounters, disease indicators, and risk inputs.
-- Primary source for dashboards and reporting.
-- =========================================================

CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.patient_analytics_master AS
SELECT
  pes.patient_id,
  pes.gender,
  pes.birth_date,

  -- Encounter metrics
  COUNT(DISTINCT pes.encounter_id) AS total_encounters,
  MAX(pes.start_date) AS last_encounter_date,

  -- Disease indicators
  db.diagnosis_code,
  db.patient_count AS disease_patient_count,

  -- Risk inputs
  pri.age_risk_flag,
  pri.frequent_encounter_flag,
  pri.chronic_condition_flag,
  pri.total_observations

FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary pes
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_gold.disease_breakdown db
  ON pes.patient_id IS NOT NULL
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_gold.patient_risk_inputs pri
  ON pes.patient_id = pri.patient_id

GROUP BY
  pes.patient_id,
  pes.gender,
  pes.birth_date,
  db.diagnosis_code,
  db.patient_count,
  pri.age_risk_flag,
  pri.frequent_encounter_flag,
  pri.chronic_condition_flag,
  pri.total_observations;
