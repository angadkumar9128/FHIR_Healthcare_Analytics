-- ============================================
-- Dashboard Team: Bronze Layer Validation
-- (Read-only | No Transformations)
-- ============================================

-- 1. List Bronze tables / files
SHOW TABLES IN fhir_healthcare_analytics_bronze;

-- 2. Check record count per resource
SELECT
  resource_type,
  COUNT(*) AS record_count
FROM fhir_healthcare_analytics_bronze.raw_fhir
GROUP BY resource_type;

-- 3. Sample raw JSON inspection
SELECT *
FROM fhir_healthcare_analytics_bronze.raw_fhir
LIMIT 5;

-- NOTE:
-- These queries are for understanding only.
-- Dashboards DO NOT use Bronze data directly.
