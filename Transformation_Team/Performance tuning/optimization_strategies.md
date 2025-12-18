# Optimization Strategies

## Delta OPTIMIZE
- Compaction of small files
- Reduced I/O overhead

---

## Partition Pruning
- Partitioned by date-based fields where applicable
- Improved query selectivity

---

## Data Skipping
- Z-Ordering applied on frequently filtered columns
- Improved read efficiency
