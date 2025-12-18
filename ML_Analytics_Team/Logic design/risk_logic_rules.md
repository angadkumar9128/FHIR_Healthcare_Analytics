# Risk Logic Rules

## Risk Score Formula (Conceptual)

overall_risk_score =
  (utilization_score * 0.30) +
  (chronic_burden_score * 0.30) +
  (cost_intensity_score * 0.25) +
  (readmission_score * 0.15)

---

## Risk Classification

| Risk Level | Score Range |
|----------|-------------|
| Low Risk | 0 – 39 |
| Medium Risk | 40 – 69 |
| High Risk | 70 – 100 |

---

## Design Notes

- Weights are adjustable (tuning stage)
- Score ranges are clinically interpretable
- Logic is deterministic and reproducible
