# ML Analytics Scope Definition

## Purpose
This document defines the responsibilities, boundaries, and ownership of the
ML Analytics Team within the FHIR Healthcare Analytics project.

---

## What ML Analytics Owns

The ML Analytics team is responsible for transforming Gold healthcare datasets
into intelligent, analytics-ready outputs.

Key responsibilities:
- Defining healthcare KPIs and metrics
- Engineering ML-ready features
- Building risk scoring and classification logic
- Integrating outputs into Gold analytics
- Supporting dashboards and insights

---

## What ML Analytics Does NOT Own

To ensure clean separation of concerns, the following are out of scope:

- Raw data ingestion (Bronze)
- JSON parsing or flattening
- Schema normalization (Silver)
- Source system validation

---

## Target Use Cases

- Patient risk stratification
- Admission and readmission analysis
- Chronic disease burden analysis
- Cost and utilization insights
- Population-level healthcare trends

---

## Output Expectations

All outputs must:
- Be explainable (no black-box transformations)
- Support time-based analysis
- Be reusable for ML model training
- Be safe for clinical and business interpretation
