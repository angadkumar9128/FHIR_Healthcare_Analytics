# Feature to Logic Mapping

| Feature Name | Derived From | Logic Applied |
|-------------|-------------|---------------|
| utilization_score | encounter_count_30d | Normalized count |
| chronic_burden_score | chronic_condition_count | Threshold-based |
| cost_intensity_score | total_claim_cost | Percentile-based |
| readmission_score | readmission_flag | Binary weighting |

---

## Feature Design Rules

- Each feature has a single business meaning
- No hidden calculations
- Bounded scores (0–100)
- Time-window aligned
