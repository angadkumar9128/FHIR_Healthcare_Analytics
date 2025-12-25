-- =====================================================
-- Dashboard Team: Core Dashboard Views
-- Catalog: angad_kumar91
-- =====================================================


-- 1️⃣ Admissions Trend Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_admissions_trend AS
SELECT
  admission_date,
  total_admissions,
  avg_length_of_stay
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions;


-- 2️⃣ Cost Analytics Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_cost_analytics AS
SELECT
  patient_id,
  encounter_id,
  total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis;


-- 3️⃣ Disease Distribution Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_disease_distribution AS
SELECT
  diagnosis,
  patient_count,
  encounter_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.disease_patterns;


-- 4️⃣ Immunization Coverage Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_immunization_coverage AS
SELECT
  vaccine_name,
  vaccinated_patients
FROM angad_kumar91.fhir_healthcare_analytics_gold.immunization_coverage;


-- 5️⃣ Medication Trends Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_medication_trends AS
SELECT
  medication_name,
  prescription_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.medication_trends;


-- 6️⃣ Procedure Trends Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_procedure_trends AS
SELECT
  procedure_name,
  procedure_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.procedure_trends;
