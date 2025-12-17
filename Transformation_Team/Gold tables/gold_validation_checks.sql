-- Validate row counts
SELECT COUNT(*) FROM gold.patient_encounter_summary;

-- Validate join completeness
SELECT COUNT(*)
FROM gold.patient_encounter_summary
WHERE patient_id IS NULL;
