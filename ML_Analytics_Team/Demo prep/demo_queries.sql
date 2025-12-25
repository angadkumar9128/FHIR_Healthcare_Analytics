-- Show integrated patient analytics
SELECT *
FROM gold.integrated_patient_analytics
LIMIT 10;

-- Show risk distribution
SELECT
  risk_level,
  COUNT(*) AS patient_count
FROM gold.integrated_patient_analytics
GROUP BY risk_level;

-- Show high-risk patients with context
SELECT
  patient_id,
  overall_risk_score,
  risk_level,
  total_claim_cost,
  chronic_condition_count
FROM gold.integrated_patient_analytics
WHERE risk_level = 'High'
ORDER BY overall_risk_score DESC;
