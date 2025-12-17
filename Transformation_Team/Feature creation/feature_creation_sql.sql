-- Patient age feature
SELECT
  patient_id,
  FLOOR(DATEDIFF(current_date(), birth_date) / 365) AS age,
  gender
FROM silver.patient;

-- Encounter duration feature
SELECT
  encounter_id,
  patient_id,
  DATEDIFF(end_date, start_date) AS encounter_duration
FROM silver.encounter;
