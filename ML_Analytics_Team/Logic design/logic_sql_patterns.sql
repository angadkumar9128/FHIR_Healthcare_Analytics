-- Example: Utilization score normalization
SELECT
  patient_id,
  LEAST(total_encounters * 10, 100) AS utilization_score
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_metrics;


-- Example: Chronic burden score
SELECT
  patient_id,
  CASE
    WHEN chronic_condition_count >= 5 THEN 100
    WHEN chronic_condition_count >= 3 THEN 70
    WHEN chronic_condition_count >= 1 THEN 40
    ELSE 10
  END AS chronic_burden_score
FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_metrics;


-- Example: Overall risk score
SELECT
  patient_id,
  ROUND(
    utilization_score * 0.30 +
    chronic_burden_score * 0.30 +
    cost_intensity_score * 0.25 +
    readmission_score * 0.15,
    2
  ) AS overall_risk_score
FROM angad_kumar91.fhir_healthcare_analytics_gold.feature_scores;


-- Run this for better result
CREATE OR REPLACE VIEW angad_kumar91.fhir_healthcare_analytics_gold.feature_scores AS
SELECT
  patient_id,

  LEAST(total_encounters * 10, 100) AS utilization_score,

  CASE
    WHEN chronic_condition_count >= 5 THEN 100
    WHEN chronic_condition_count >= 3 THEN 70
    WHEN chronic_condition_count >= 1 THEN 40
    ELSE 10
  END AS chronic_burden_score,

  CASE
    WHEN total_claim_cost >= 5000 THEN 100
    WHEN total_claim_cost >= 2000 THEN 70
    WHEN total_claim_cost >= 500 THEN 40
    ELSE 10
  END AS cost_intensity_score,

  CASE
    WHEN readmission_flag = 1 THEN 100
    ELSE 20
  END AS readmission_score

FROM angad_kumar91.fhir_healthcare_analytics_gold.patient_metrics;
