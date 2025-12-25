# Risk Scoring Logic

## Overall Risk Score Formula

overall_risk_score =
  (utilization_score * 0.30) +
  (chronic_burden_score * 0.30) +
  (cost_intensity_score * 0.25) +
  (readmission_score * 0.15)

---

## Rationale

- Utilization reflects system dependency
- Chronic burden reflects long-term health risk
- Cost intensity reflects financial impact
- Readmission reflects acute instability

Weights are configurable and tunable.
