-- Integrated Patient Risk Overview
CREATE OR REPLACE VIEW gold.patient_risk_overview AS
SELECT
  p.patient_id,
  p.age,
  p.gender,
  e.encounter_count,
  e.avg_stay_duration,
  c.chronic_condition_count,
  f.total_claim_cost
FROM silver.patient_features p
LEFT JOIN silver.encounter_aggregates e
  ON p.patient_id = e.patient_id
LEFT JOIN silver.condition_aggregates c
  ON p.patient_id = c.patient_id
LEFT JOIN silver.financial_features f
  ON p.patient_id = f.patient_id;
