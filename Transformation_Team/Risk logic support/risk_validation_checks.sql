-- Validate no null patient IDs
SELECT COUNT(*)
FROM silver.patient_features
WHERE patient_id IS NULL;

-- Validate risk input completeness
SELECT COUNT(*)
FROM silver.encounter_features
WHERE encounter_duration IS NULL;
