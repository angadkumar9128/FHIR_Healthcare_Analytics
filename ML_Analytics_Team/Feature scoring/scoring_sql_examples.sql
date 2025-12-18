-- Utilization Score
SELECT
  patient_id,
  LEAST(encounter_count_30d * 10, 100) AS utilization_score
FROM validated_metrics;

-- Chronic Burden Score
SELECT
  patient_id,
  CASE
    WHEN chronic_condition_count >= 5 THEN 100
    WHEN chronic_condition_count >= 3 THEN 70
    WHEN chronic_condition_count >= 1 THEN 40
    ELSE 10
  END AS chronic_burden_score
FROM validated_metrics;

-- Cost Intensity Score (capped)
SELECT
  patient_id,
  LEAST(total_claim_cost / 1000 * 10, 100) AS cost_intensity_score
FROM validated_metrics;

-- Readmission Score
SELECT
  patient_id,
  CASE
    WHEN readmission_flag = 1 THEN 100
    ELSE 0
  END AS readmission_score
FROM validated_metrics;
