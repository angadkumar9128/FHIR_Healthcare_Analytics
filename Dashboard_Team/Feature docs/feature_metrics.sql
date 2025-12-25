-- =====================================================
-- Dashboard Team: Feature Metrics (Gold Layer)
-- Catalog: angad_kumar91
-- =====================================================

-- Admission Features
SELECT
  admission_date,
  total_admissions,
  avg_length_of_stay
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions;

-- Cost Features
SELECT
  patient_id,
  encounter_id,
  total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis;

-- Disease Features
SELECT
  diagnosis,
  patient_count,
  encounter_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.disease_patterns;

-- Medication Trends
SELECT
  medication_name,
  prescription_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.medication_trends;

-- Procedure Trends
SELECT
  procedure_name,
  procedure_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.procedure_trends;

-- Immunization Coverage
SELECT
  vaccine_name,
  vaccinated_patients
FROM angad_kumar91.fhir_healthcare_analytics_gold.immunization_coverage;
