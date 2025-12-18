# Feature-Level Validation Rules

| Feature Name | Rule |
|-------------|------|
| encounter_count_30d | Must be >= 0 |
| avg_los | Must be between 0 and 365 |
| chronic_condition_count | Cannot be negative |
| total_claim_cost | Must be >= 0 |
| utilization_score | Must be between 0 and 100 |

---

## Handling Invalid Records

- Null values → default safe values
- Outliers → capped at max threshold
- Invalid records → flagged, not dropped
