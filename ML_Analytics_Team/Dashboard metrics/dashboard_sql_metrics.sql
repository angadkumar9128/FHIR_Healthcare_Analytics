-- =====================================================
-- Risk Distribution KPIs
-- =====================================================
SELECT
  risk_level,
  COUNT(DISTINCT patient_id) AS patient_count
FROM gold.integrated_patient_analytics
GROUP BY risk_level;


-- =====================================================
-- Overall KPI Summary
-- =====================================================
SELECT
  COUNT(DISTINCT patient_id) AS total_patients,
  SUM(CASE WHEN risk_level = 'High' THEN 1 ELSE 0 END) AS high_risk_patients,
  SUM(CASE WHEN risk_level = 'Medium' THEN 1 ELSE 0 END) AS medium_risk_patients,
  SUM(CASE WHEN risk_level = 'Low' THEN 1 ELSE 0 END) AS low_risk_patients
FROM gold.integrated_patient_analytics;


-- =====================================================
-- Cost by Risk Level
-- =====================================================
SELECT
  risk_level,
  SUM(total_claim_cost) AS total_cost,
  AVG(total_claim_cost) AS avg_cost
FROM gold.integrated_patient_analytics
GROUP BY risk_level;


-- =====================================================
-- Utilization vs Risk
-- =====================================================
SELECT
  risk_level,
  AVG(total_encounters) AS avg_encounters,
  AVG(admission_count) AS avg_admissions,
  AVG(avg_los) AS avg_los
FROM gold.integrated_patient_analytics
GROUP BY risk_level;
