# Data Contract – ML Analytics Gold Outputs

## patient_risk_summary

| Column | Description |
|------|-------------|
| patient_id | Unique patient identifier |
| overall_risk_score | Aggregated risk score (0–100) |
| risk_level | Low / Medium / High |
| evaluation_date | Date of evaluation |
| model_version | Rule version identifier |

---

## Contract Rules

- Columns are append-only
- No semantic changes without version bump
- Backward compatibility preserved
