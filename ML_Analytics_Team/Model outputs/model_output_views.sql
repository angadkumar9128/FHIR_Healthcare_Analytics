-- =========================================================
-- 1. Patient Feature Scores Output
-- =========================================================
CREATE OR REPLACE VIEW ml_outputs.patient_feature_scores AS
SELECT
  patient_id,
  utilization_score,
  chronic_burden_score,
  cost_intensity_score,
  readmission_score,
  current_date() AS evaluation_date
FROM feature_scores;


-- =========================================================
-- 2. Patient Risk Scores Output
-- =========================================================
CREATE OR REPLACE VIEW ml_outputs.patient_risk_scores AS
SELECT
  patient_id,
  (
    utilization_score * 0.30 +
    chronic_burden_score * 0.30 +
    cost_intensity_score * 0.25 +
    readmission_score * 0.15
  ) AS overall_risk_score,
  current_date() AS evaluation_date,
  'v1_rule_based' AS model_version
FROM feature_scores;


-- =========================================================
-- 3. Patient Risk Classification Output
-- =========================================================
CREATE OR REPLACE VIEW ml_outputs.patient_risk_classification AS
SELECT
  patient_id,
  overall_risk_score,
  CASE
    WHEN overall_risk_score >= 70 THEN 'High'
    WHEN overall_risk_score >= 40 THEN 'Medium'
    ELSE 'Low'
  END AS risk_level,
  evaluation_date,
  model_version
FROM ml_outputs.patient_risk_scores;


-- =========================================================
-- 4. Patient Risk Explanation Output
-- =========================================================
CREATE OR REPLACE VIEW ml_outputs.patient_risk_explanation AS
SELECT
  f.patient_id,
  r.overall_risk_score,
  r.risk_level,
  CONCAT(
    'Utilization Score: ', f.utilization_score,
    ', Chronic Burden Score: ', f.chronic_burden_score,
    ', Cost Intensity Score: ', f.cost_intensity_score,
    ', Readmission Score: ', f.readmission_score
  ) AS risk_explanation,
  r.evaluation_date
FROM ml_outputs.patient_feature_scores f
JOIN ml_outputs.patient_risk_classification r
  ON f.patient_id = r.patient_id;
