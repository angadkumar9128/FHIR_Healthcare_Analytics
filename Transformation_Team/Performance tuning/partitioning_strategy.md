# Partitioning Strategy

## Partition Columns
- encounter_start_date
- admission_month

---

## Rationale
- Time-based filtering is common in analytics
- Enables partition pruning

---

## Outcome
Queries scanning limited date ranges
show improved performance.
