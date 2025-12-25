-- ============================================
-- Dashboard Team: Workspace Setup Validation
-- ============================================

-- 1. Confirm Gold Schema Availability
SHOW TABLES IN fhir_healthcare_analytics_gold;

-- 2. Basic Row Count Validation
SELECT
  'patient_encounter_summary' AS table_name,
  COUNT(*) AS row_count
FROM fhir_healthcare_analytics_gold.patient_encounter_summary

UNION ALL

SELECT
  'admissions_analytics',
  COUNT(*)
FROM fhir_healthcare_analytics_gold.admissions_analytics

UNION ALL

SELECT
  'disease_breakdown',
  COUNT(*)
FROM fhir_healthcare_analytics_gold.disease_breakdown;

-- 3. Sample Data Check (Dashboard Safety)
SELECT *
FROM fhir_healthcare_analytics_gold.patient_encounter_summary
LIMIT 10;

-- 4. Verify Date Columns for Filtering
SELECT
  MIN(admission_date) AS min_date,
  MAX(admission_date) AS max_date
FROM fhir_healthcare_analytics_gold.admissions_analytics;

-- 5. Read-Only Dashboard View Example
CREATE OR REPLACE VIEW dashboard_workspace_test AS
SELECT
  patient_id,
  encounter_count_30d,
  total_claim_cost
FROM fhir_healthcare_analytics_gold.patient_encounter_summary;
