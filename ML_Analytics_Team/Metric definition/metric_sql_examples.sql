-- Encounter count in last 30 days
SELECT
  patient_id,
  COUNT(*) AS encounter_count_30d
FROM patient_encounter_summary
WHERE encounter_date >= current_date() - INTERVAL 30 DAYS
GROUP BY patient_id;

-- Readmission flag (within 30 days)
SELECT
  patient_id,
  CASE
    WHEN COUNT(*) > 1 THEN 1
    ELSE 0
  END AS readmission_flag
FROM admissions_analytics
WHERE admission_date >= current_date() - INTERVAL 30 DAYS
GROUP BY patient_id;

-- Total claim cost per patient
SELECT
  patient_id,
  SUM(claim_amount) AS total_claim_cost
FROM claims_summary
GROUP BY patient_id;
