-- Encounter count in last 30 days
SELECT
  patient_id,
  COUNT(DISTINCT encounter_id) AS encounter_count_30d
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary
WHERE admit_time >= current_date() - INTERVAL 30 DAYS
GROUP BY patient_id;


-- Readmission flag (within 30 days)
SELECT
  patient_id,
  CASE
    WHEN COUNT(DISTINCT encounter_id) > 1 THEN 1
    ELSE 0
  END AS readmission_flag
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary
WHERE admit_time >= current_date() - INTERVAL 30 DAYS
GROUP BY patient_id;


-- Total claim cost per patient
SELECT
  patient_id,
  SUM(total_amount) AS total_claim_cost
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_encounter_summary
GROUP BY patient_id;
