-- =========================================================
-- GOLD TABLE: patient_encounter_summary
-- BUSINESS MEANING:
-- Provides a consolidated view of patient demographics
-- combined with encounter details.
-- Used for patient-level analytics and operational reporting.
-- =========================================================

CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary AS
SELECT
  p.patient_id,
  p.gender,
  p.birth_date,
  e.encounter_id,
  e.encounter_type,
  e.start_date,
  e.end_date
FROM angad_kumar91.fhir_healthcare_analytics_silver.patient p
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_silver.encounter e
  ON p.patient_id = e.patient_id;


-- =========================================================
-- GOLD TABLE: admissions_analytics
-- BUSINESS MEANING:
-- Aggregated dataset to analyze hospital admission trends
-- over time.
-- Used by dashboards and management reporting.
-- =========================================================

CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.admissions_analytics AS
SELECT
  DATE(e.start_date) AS admission_date,
  COUNT(DISTINCT e.encounter_id) AS total_admissions
FROM angad_kumar91.fhir_healthcare_analytics_silver.encounter e
GROUP BY DATE(e.start_date);


-- =========================================================
-- GOLD TABLE: disease_breakdown
-- BUSINESS MEANING:
-- Provides insight into disease prevalence across the
-- patient population.
-- Used for public health and clinical trend analysis.
-- =========================================================

CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.disease_breakdown AS
SELECT
  c.diagnosis_code,
  c.diagnosis_description,
  COUNT(DISTINCT c.patient_id) AS patient_count
FROM angad_kumar91.fhir_healthcare_analytics_silver.condition c
GROUP BY
  c.diagnosis_code,
  c.diagnosis_description;
