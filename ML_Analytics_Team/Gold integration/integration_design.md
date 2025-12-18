# Gold Integration Design

## Integration Approach

- ML outputs are written as Gold views
- No overwrite of existing Gold tables
- All joins use patient_id as primary key

---

## Data Sources

- feature_scores (ML Analytics)
- risk_scores (ML Analytics)
- patient_encounter_summary (Gold)

---

## Refresh Strategy

- Daily or batch refresh
- Idempotent logic
- Time-window based recomputation
