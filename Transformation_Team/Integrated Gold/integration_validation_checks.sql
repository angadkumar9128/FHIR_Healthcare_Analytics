-- Validate primary key integrity
SELECT COUNT(*) - COUNT(DISTINCT patient_id)
FROM gold.patient_risk_overview;

-- Validate null joins
SELECT COUNT(*)
FROM gold.patient_risk_overview
WHERE patient_id IS NULL;
