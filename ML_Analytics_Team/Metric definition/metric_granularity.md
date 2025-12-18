# Metric Granularity & Time Windows

## Granularity
All metrics are computed at:
- Patient level
- Optional encounter-level rollups

---

## Time Windows

| Window | Purpose |
|------|--------|
| 30 days | Short-term risk detection |
| 60 days | Medium-term trend |
| 90 days | Chronic pattern identification |

---

## Why Time Windows Matter
- Reflect patient behavior over time
- Reduce noise
- Improve ML signal quality
