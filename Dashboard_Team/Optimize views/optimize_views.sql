-- =====================================================
-- Dashboard Team: View & Table Optimizations
-- Catalog: angad_kumar91
-- =====================================================


-- 1️⃣ OPTIMIZE GOLD TABLES (Delta Optimization)

OPTIMIZE angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions
ZORDER BY (admission_date);

OPTIMIZE angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis
ZORDER BY (encounter_date);

OPTIMIZE angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary
ZORDER BY (patient_id);


-- =====================================================
-- 2️⃣ OPTIMIZED DASHBOARD VIEWS (COLUMN PRUNING)
-- =====================================================

CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_admissions_optimized AS
SELECT
  admission_date,
  total_admissions,
  avg_length_of_stay
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions;


CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_cost_optimized AS
SELECT
  encounter_id,
  patient_id,
  total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis;


CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_patient_summary_optimized AS
SELECT
  patient_id,
  encounter_id,
  diagnosis,
  encounter_status,
  encounter_type,
  total_amount
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary;


-- =====================================================
-- 3️⃣ PRE-AGGREGATED ANALYTICS VIEWS
-- =====================================================

CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_daily_cost_summary AS
SELECT
  encounter_date,
  SUM(total_cost) AS daily_total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis
GROUP BY encounter_date;


CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_diagnosis_cost_summary AS
SELECT
  diagnosis,
  SUM(total_cost) AS total_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis
GROUP BY diagnosis;
