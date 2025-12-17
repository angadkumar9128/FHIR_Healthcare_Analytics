-- Primary key validation
SELECT COUNT(*) - COUNT(DISTINCT patient_id) AS duplicate_patients
FROM silver.patient;

-- Foreign key validation
SELECT COUNT(*)
FROM silver.encounter
WHERE patient_id IS NULL;
