-- Compute overall risk score
SELECT
  patient_id,
  (
    utilization_score * 0.30 +
    chronic_burden_score * 0.30 +
    cost_intensity_score * 0.25 +
    readmission_score * 0.15
  ) AS overall_risk_score
FROM feature_scores;

-- Assign risk category
SELECT
  patient_id,
  overall_risk_score,
  CASE
    WHEN overall_risk_score >= 70 THEN 'High'
    WHEN overall_risk_score >= 40 THEN 'Medium'
    ELSE 'Low'
  END AS risk_level
FROM risk_scores;
