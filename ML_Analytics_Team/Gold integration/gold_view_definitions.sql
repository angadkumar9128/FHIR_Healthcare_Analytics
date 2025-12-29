-- Patient Risk Summary View
CREATE OR REPLACE VIEW gold.patient_risk_summary AS
SELECT
  f.patient_id,
  r.overall_risk_score,
  CASE
    WHEN r.overall_risk_score >= 70 THEN 'High'
    WHEN r.overall_risk_score >= 40 THEN 'Medium'
    ELSE 'Low'
  END AS risk_level,
  current_date() AS evaluation_date,
  'v1_rule_based' AS model_version
FROM healthcare.fhir_healthcare_analytics_gold.medication_trends
JOIN healthcare.fhir_healthcare_analytics_gold.medication_trends
  ON medication_trends.patient_id = medication_trends.patient_id;
