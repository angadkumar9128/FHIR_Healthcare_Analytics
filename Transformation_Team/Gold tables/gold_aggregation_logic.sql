-- Patient Encounter Summary
CREATE OR REPLACE VIEW gold.patient_encounter_summary AS
SELECT
  p.patient_id,
  p.gender,
  p.age,
  COUNT(DISTINCT e.encounter_id) AS total_encounters,
  AVG(e.encounter_duration) AS avg_stay_duration
FROM silver.patient_features p
LEFT JOIN silver.encounter_features e
  ON p.patient_id = e.patient_id
GROUP BY p.patient_id, p.gender, p.age;
