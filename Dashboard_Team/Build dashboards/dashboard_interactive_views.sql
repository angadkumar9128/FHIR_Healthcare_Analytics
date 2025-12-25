-- =====================================================
-- Dashboard Team: Interactive & Drill-Down Views
-- =====================================================


-- 1️⃣ Patient 360° Drill-Down Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_patient_360 AS
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


-- 2️⃣ High-Cost Encounters Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_high_cost_encounters AS
SELECT
  patient_id,
  encounter_id,
  total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis
WHERE total_cost > (
  SELECT PERCENTILE_CONT(0.90) 
  WITHIN GROUP (ORDER BY total_cost)
  FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis
);


-- 3️⃣ Disease vs Cost Correlation Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_disease_cost_correlation AS
SELECT
  dp.diagnosis,
  dp.patient_count,
  SUM(ca.total_cost) AS total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.disease_patterns dp
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis ca
  ON dp.diagnosis = ca.diagnosis
GROUP BY
  dp.diagnosis,
  dp.patient_count;


-- 4️⃣ Admission Load Classification Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_admission_load AS
SELECT
  admission_date,
  total_admissions,
  CASE
    WHEN total_admissions >= 50 THEN 'High Load'
    WHEN total_admissions >= 20 THEN 'Medium Load'
    ELSE 'Low Load'
  END AS admission_load_category
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions;


-- 5️⃣ Preventive Care Impact Dashboard
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_preventive_care_impact AS
SELECT
  ic.vaccine_name,
  ic.vaccinated_patients,
  dp.patient_count AS disease_patient_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.immunization_coverage ic
LEFT JOIN angad_kumar91.fhir_healthcare_analytics_gold.disease_patterns dp
  ON ic.vaccine_name = dp.diagnosis;
