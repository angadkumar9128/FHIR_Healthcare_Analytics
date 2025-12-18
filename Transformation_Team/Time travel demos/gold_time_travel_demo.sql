-- View Gold table history
DESCRIBE HISTORY gold.patient_encounter_summary;

-- Query Gold table as of earlier version
SELECT *
FROM gold.patient_encounter_summary
VERSION AS OF 2;
