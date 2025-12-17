-- Bronze record availability check
SELECT
  resourceType,
  COUNT(*) AS record_count
FROM fhir_healthcare_analytics_bronze.raw_fhir
GROUP BY resourceType;

-- Sample JSON structure inspection
SELECT
  resourceType,
  raw_json
FROM fhir_healthcare_analytics_bronze.raw_fhir
LIMIT 10;
