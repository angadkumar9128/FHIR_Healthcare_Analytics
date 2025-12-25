# ML Analytics – Model Outputs

## Objective
This module defines the final outputs produced by the ML Analytics layer.
These outputs represent the transformation of healthcare data into
actionable intelligence that can be consumed by:

- Dashboards
- Reporting tools
- Downstream ML models
- Business and clinical stakeholders

The outputs are **rule-based, explainable, and ML-ready**.

---

## Position in Overall Architecture

FHIR Data

   ↓

Bronze (Raw JSON)

   ↓

Silver (Normalized)

   ↓

Gold (Analytics Tables)

   ↓

ML Analytics

   → Feature Scores
   → Risk Scores
   → Risk Categories
   → Explainable Outputs   ← (This Module)

---

## What Are Model Outputs?

Model outputs are **final analytical datasets** that represent the
decision-making layer of the system.

They answer questions like:
- Which patients are high risk?
- Why are they high risk?
- What features contributed most?
- Can this data be used for ML training?

---

## Output Design Principles

All model outputs must be:

- Patient-level
- Time-window based
- Explainable (no black box)
- Deterministic and reproducible
- Ready for ML model consumption

---

## Key Output Tables / Views

### 1. patient_feature_scores
Contains individual feature scores derived from healthcare metrics.

**Purpose**
- Feature-level transparency
- ML training input
- Score debugging and tuning

**Key Columns**
- patient_id
- utilization_score
- chronic_burden_score
- cost_intensity_score
- readmission_score
- evaluation_date

---

### 2. patient_risk_scores
Aggregated numerical risk score per patient.

**Purpose**
- Single numeric signal
- Sorting and prioritization
- Model target variable (future)

**Key Columns**
- patient_id
- overall_risk_score
- evaluation_date
- model_version

---

### 3. patient_risk_classification
Human-readable risk category.

**Purpose**
- Dashboard consumption
- Business interpretation
- Clinical triage

**Risk Levels**
- Low
- Medium
- High

---

### 4. patient_risk_explanation
Explainability layer showing why a patient is risky.

**Purpose**
- Trust and auditability
- Clinical acceptance
- Reviewer confidence

**Example Explanation**
"High utilization and multiple chronic conditions contributed most to this risk score."

---

## Why This Is ML-Ready

Even though the logic is rule-based:

- Features are clean and numerical
- Target variable exists (risk score)
- Schema is stable
- Time-based snapshots are preserved

This allows:
- Logistic regression
- Tree-based models
- Neural networks
to be added **without redesign**.

---

## Governance & Versioning

Each output includes:
- evaluation_date
- model_version

This enables:
- A/B testing
- Historical comparison
- Safe tuning and rollback

---

## Summary

This module represents the final intelligence layer of the healthcare
analytics platform. It produces explainable, patient-centric risk outputs
that are directly usable for dashboards today and ML models tomorrow.

No black-box logic is used, ensuring transparency, auditability, and trust.
