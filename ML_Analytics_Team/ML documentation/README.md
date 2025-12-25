# ML Analytics – Documentation

## Overview
This documentation describes the ML Analytics layer built on top of
FHIR-based healthcare analytics.

The ML Analytics layer transforms curated Gold healthcare data into
explainable, risk-aware intelligence that supports dashboards today
and machine learning models in the future.

---

## What This Layer Does

- Defines healthcare metrics
- Engineers ML-ready features
- Applies rule-based risk scoring
- Produces explainable patient risk outputs
- Integrates intelligence into Gold analytics
- Supports dashboards and decision-making

---

## Why Rule-Based ML Analytics?

Healthcare analytics demands:
- Explainability
- Auditability
- Clinical trust

A rule-first approach ensures transparency while still enabling
future ML models without redesign.

---

## Key Outputs

- Feature scores (0–100)
- Overall risk scores
- Risk categories (Low / Medium / High)
- Explainability artifacts
- Integrated Gold analytics views

---

## Design Guarantees

- No black-box logic
- Deterministic outputs
- Versioned changes
- Patient-level granularity
- Time-windowed analytics

---

## Intended Audience

- Data engineers
- ML engineers
- Healthcare analysts
- Reviewers and stakeholders
