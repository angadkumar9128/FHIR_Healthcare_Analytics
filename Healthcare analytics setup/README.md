# ML Analytics – Healthcare Analytics Setup

## Objective
This module establishes the foundation for the ML Analytics layer built on top of
FHIR-based Gold datasets. It defines the analytics scope, data dependencies,
design principles, and readiness for downstream risk modeling and dashboards.

The goal is to ensure that all ML analytics are:
- Explainable
- Deterministic
- Analytics-ready
- Aligned with healthcare business use cases

---

## Input Data Sources (Gold Layer Only)

The ML Analytics layer consumes only curated Gold tables to guarantee data quality
and stability.

| Gold Table Name | Description |
|----------------|-------------|
| patient_encounter_summary | Patient visit and encounter history |
| admissions_analytics | Admission and readmission indicators |
| disease_breakdown | Diagnosed conditions and prevalence |
| treatment_trends | Procedures, medications, and treatments |
| claims_summary | Cost, utilization, and insurance metrics |

---

## Scope of ML Analytics
This layer focuses on **logic, metrics, and intelligence**, not raw data processing.

Included:
- Metric definition
- Feature engineering
- Risk scoring logic
- ML-ready datasets
- Dashboard metrics

Excluded:
- Raw ingestion
- JSON flattening
- Silver normalization

---

## Design Principles

- Gold-only dependency to avoid schema instability
- Rule-first ML design for explainability
- Time-window based healthcare analytics
- Patient-level aggregation
- Business-aligned metrics

---

## Deliverables from This Layer

- ML-ready feature tables
- Risk scoring outputs
- Explainable analytics columns
- Dashboard-consumable metrics
- Documentation and demo artifacts

---

## Status
**Completed** – ML Analytics foundation established and documented.
