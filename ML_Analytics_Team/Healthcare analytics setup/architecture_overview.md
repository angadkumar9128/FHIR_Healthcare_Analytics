# ML Analytics Architecture Overview

## High-Level Flow

FHIR data is processed through a Medallion architecture and enhanced by ML Analytics.

FHIR JSON

↓

Bronze (Raw)

↓

Silver (Normalized)

↓

Gold (Analytics)

↓

ML Analytics (Risk, Metrics, Intelligence)

↓

Dashboards / ML Models



---

## Why ML Analytics Sits on Gold

- Gold datasets are stable and business-aligned
- Reduces schema change impact
- Ensures reliable metrics
- Simplifies governance and review

---

## Analytics Design Pattern

- Patient-level aggregation
- Time-window metrics (30/60/90 days)
- Rule-based scoring
- Feature normalization
- Explainable outputs

---

## Future ML Extension

This design allows:
- Plug-and-play ML models
- Feature reuse
- Model versioning
- Continuous improvement

No redesign required.
