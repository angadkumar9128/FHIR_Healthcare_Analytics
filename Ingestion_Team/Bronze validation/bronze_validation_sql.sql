-- 1. List all Bronze tables
SHOW TABLES IN angad_kumar91.fhir_healthcare_analytics_bronze;

-- 2. Record count check
SELECT COUNT(*) AS record_count
FROM angad_kumar91.fhir_healthcare_analytics_bronze.patient;

-- 3. Mandatory FHIR field validation
SELECT
  COUNT(*) AS total_records,
  SUM(CASE WHEN id IS NULL THEN 1 ELSE 0 END) AS null_id_count,
  SUM(CASE WHEN resourceType IS NULL THEN 1 ELSE 0 END) AS null_resourceType_count
FROM angad_kumar91.fhir_healthcare_analytics_bronze.patient;

-- 4. Sample data verification
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_bronze.encounter
LIMIT 10;

-- 5. Schema inspection
DESCRIBE TABLE angad_kumar91.fhir_healthcare_analytics_bronze.observation;
