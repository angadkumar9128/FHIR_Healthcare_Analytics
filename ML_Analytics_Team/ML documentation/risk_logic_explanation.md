# Risk Logic Explanation

## Risk Score Formula

overall_risk_score =
(utilization_score * 0.30) +
(chronic_burden_score * 0.30) +
(cost_intensity_score * 0.25) +
(readmission_score * 0.15)

---

## Risk Categories

| Category | Score Range | Meaning |
|--------|-------------|--------|
| Low | 0–39 | Stable |
| Medium | 40–69 | Monitor |
| High | 70–100 | Intervention needed |

---

## Explainability

Each patient record includes:
- Individual feature scores
- Overall risk score
- Risk category
- Human-readable explanation
