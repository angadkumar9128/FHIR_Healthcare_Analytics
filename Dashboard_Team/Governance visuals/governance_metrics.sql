-- =====================================================
-- Dashboard Team: Governance Metrics (Gold Layer)
-- Catalog: angad_kumar91
-- =====================================================


-- 1️⃣ DATA FRESHNESS METRICS
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_data_freshness AS
SELECT
  'patient_admissions' AS table_name,
  MAX(admission_date) AS last_business_date,
  CURRENT_DATE() AS check_date
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions

UNION ALL

SELECT
  'cost_analysis',
  MAX(encounter_date),
  CURRENT_DATE()
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis;


-- 2️⃣ DATA VOLUME METRICS
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_data_volume AS
SELECT
  'patient_admissions' AS table_name,
  COUNT(*) AS row_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions

UNION ALL

SELECT
  'cost_analysis',
  COUNT(*)
FROM angad_kumar91.fhir_healthcare_analytics_gold.cost_analysis

UNION ALL

SELECT
  'disease_patterns',
  COUNT(*)
FROM angad_kumar91.fhir_healthcare_analytics_gold.disease_patterns;


-- 3️⃣ METRIC HEALTH CHECKS
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.vw_metric_health AS
SELECT
  'patient_admissions' AS table_name,
  SUM(CASE WHEN total_admissions IS NULL THEN 1 ELSE 0 END) AS null_metric_count,
  SUM(CASE WHEN total_admissions < 0 THEN 1 ELSE 0 END) AS invalid_metric_count
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_admissions;
