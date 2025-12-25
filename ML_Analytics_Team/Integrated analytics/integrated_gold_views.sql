-- =====================================================
-- Integrated Patient Analytics View
-- =====================================================
CREATE OR REPLACE VIEW gold.integrated_patient_analytics AS
SELECT
  p.patient_id,

  -- Clinical & utilization context
  p.total_encounters,
  a.admission_count,
  a.avg_los,

  -- Disease context
  d.chronic_condition_count,

  -- Financial context
  c.total_claim_cost,

  -- ML feature scores
  f.utilization_score,
  f.chronic_burden_score,
  f.cost_intensity_score,
  f.readmission_score,

  -- ML risk outputs
  r.overall_risk_score,
  rc.risk_level,

  -- Metadata
  r.evaluation_date,
  r.model_version

FROM patient_encounter_summary p

LEFT JOIN admissions_analytics a
  ON p.patient_id = a.patient_id

LEFT JOIN disease_breakdown d
  ON p.patient_id = d.patient_id

LEFT JOIN claims_summary c
  ON p.patient_id = c.patient_id

LEFT JOIN ml_outputs.patient_feature_scores f
  ON p.patient_id = f.patient_id

LEFT JOIN ml_outputs.patient_risk_scores r
  ON p.patient_id = r.patient_id

LEFT JOIN ml_outputs.patient_risk_classification rc
  ON p.patient_id = rc.patient_id;
