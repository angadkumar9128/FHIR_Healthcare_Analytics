-- Query plan inspection
EXPLAIN
SELECT *
FROM gold.patient_encounter_summary
WHERE patient_id = 'sample_patient_id';

-- File count validation
DESCRIBE DETAIL gold.patient_encounter_summary;
