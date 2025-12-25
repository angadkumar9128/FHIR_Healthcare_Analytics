-- =====================================================
-- Dashboard Team: Integrated Visuals (Gold Layer)
-- Catalog: angad_kumar91
-- =====================================================


-- 1️⃣ Admissions + Cost Integration
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_admissions_cost AS
SELECT
  pa.admission_date,
  pa.total_admissions,
  pa.avg_length_of_stay,
  SUM(ca.total_cost) AS total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions pa
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis ca
  ON pa.admission_date = ca.encounter_date
GROUP BY
  pa.admission_date,
  pa.total_admissions,
  pa.avg_length_of_stay;


-- 2️⃣ Disease + Utilization Integration
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_disease_utilization AS
SELECT
  dp.diagnosis,
  dp.patient_count,
  dp.encounter_count,
  SUM(ca.total_cost) AS total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.disease_patterns dp
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis ca
  ON dp.diagnosis = ca.diagnosis
GROUP BY
  dp.diagnosis,
  dp.patient_count,
  dp.encounter_count;


-- 3️⃣ Patient-Level Integrated View
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_patient_integrated AS
SELECT
  pes.patient_id,
  pes.encounter_id,
  pes.encounter_status,
  pes.encounter_type,
  pes.diagnosis,
  pes.total_amount,
  ca.total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary pes
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis ca
  ON pes.patient_id = ca.patient_id
 AND pes.encounter_id = ca.encounter_id;
