-- Encounter frequency indicator
SELECT
  patient_id,
  COUNT(encounter_id) AS encounter_count
FROM silver.encounter_features
GROUP BY patient_id;

-- Chronic condition count
SELECT
  patient_id,
  COUNT(DISTINCT diagnosis_category) AS chronic_condition_count
FROM silver.condition_features
WHERE diagnosis_category = 'Chronic'
GROUP BY patient_id;
