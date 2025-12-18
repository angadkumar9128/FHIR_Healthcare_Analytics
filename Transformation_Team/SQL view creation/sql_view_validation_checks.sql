-- Validate view accessibility
SELECT COUNT(*) FROM analytics.vw_patient_encounter_summary;

-- Validate null safety
SELECT COUNT(*)
FROM analytics.vw_patient_encounter_summary
WHERE patient_id IS NULL;
