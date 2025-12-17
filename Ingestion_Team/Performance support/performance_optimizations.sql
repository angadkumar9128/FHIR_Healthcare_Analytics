-- File compaction for Silver tables
OPTIMIZE angad_kumar91.fhir_healthcare_analytics_silver.patient;

OPTIMIZE angad_kumar91.fhir_healthcare_analytics_silver.encounter;

-- Z-Ordering for frequent query filters
OPTIMIZE angad_kumar91.fhir_healthcare_analytics_gold.patient_analytics_master
ZORDER BY (patient_id);

-- Query plan inspection (demo purpose)
EXPLAIN
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_analytics_master
WHERE patient_id IS NOT NULL;
