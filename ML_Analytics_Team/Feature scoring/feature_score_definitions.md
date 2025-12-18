# Feature Score Definitions

## Utilization Score

Derived from:
- encounter_count_30d
- admission_count_90d

Logic:
- High encounter frequency → higher score

---

## Chronic Burden Score

Derived from:
- chronic_condition_count

Logic:
- More chronic conditions → higher score

---

## Cost Intensity Score

Derived from:
- total_claim_cost

Logic:
- Percentile-based scoring to reduce outlier impact

---

## Readmission Score

Derived from:
- readmission_flag

Logic:
- Binary score (0 or high impact)
