-- Optimize Silver Encounter table
OPTIMIZE silver.encounter
WHERE start_date >= '2022-01-01';

-- Optimize Gold Patient Encounter Summary
OPTIMIZE gold.patient_encounter_summary;
