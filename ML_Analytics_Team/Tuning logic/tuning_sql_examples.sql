-- Original scoring (baseline)
SELECT
  patient_id,
  (
    utilization_score * 0.30 +
    chronic_burden_score * 0.30 +
    cost_intensity_score * 0.25 +
    readmission_score * 0.15
  ) AS baseline_score
FROM feature_scores;

-- Tuned scoring (example)
SELECT
  patient_id,
  (
    utilization_score * 0.35 +
    chronic_burden_score * 0.25 +
    cost_intensity_score * 0.25 +
    readmission_score * 0.15
  ) AS tuned_score
FROM feature_scores;

-- Compare impact
SELECT
  patient_id,
  tuned_score - baseline_score AS score_delta
FROM score_comparison;
