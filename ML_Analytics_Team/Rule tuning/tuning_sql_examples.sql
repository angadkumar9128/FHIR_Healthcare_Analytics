-- Example: Adjusted weight calculation
SELECT
  patient_id,
  (
    utilization_score * 0.35 +
    chronic_burden_score * 0.25 +
    cost_intensity_score * 0.25 +
    readmission_score * 0.15
  ) AS tuned_risk_score
FROM feature_scores;

-- Compare original vs tuned
SELECT
  patient_id,
  original_risk_score,
  tuned_risk_score,
  tuned_risk_score - original_risk_score AS score_delta
FROM risk_comparison;
