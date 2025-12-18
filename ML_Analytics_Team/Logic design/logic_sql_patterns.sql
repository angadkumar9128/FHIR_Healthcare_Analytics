-- Example: Utilization score normalization
SELECT
  patient_id,
  LEAST(encounter_count_30d * 10, 100) AS utilization_score
FROM metric_table;

-- Example: Chronic burden score
SELECT
  patient_id,
  CASE
    WHEN chronic_condition_count >= 5 THEN 100
    WHEN chronic_condition_count >= 3 THEN 70
    WHEN chronic_condition_count >= 1 THEN 40
    ELSE 10
  END AS chronic_burden_score
FROM metric_table;

-- Example: Overall risk score
SELECT
  patient_id,
  (
    utilization_score * 0.30 +
    chronic_burden_score * 0.30 +
    cost_intensity_score * 0.25 +
    readmission_score * 0.15
  ) AS overall_risk_score
FROM feature_scores;
