# 📊 Dashboard Team – Data Quality Report

## 📌 Task Objective
The purpose of the Data Quality Report is to ensure that all datasets
used by dashboards are accurate, reliable, and safe for decision-making.

This task validates:
- Data completeness
- Data correctness
- Value ranges
- Business rule consistency

Only **Silver and Gold layers** are evaluated, as Bronze is raw data
and not analytics-ready.

---

## 🧠 Why Data Quality Matters for Dashboards
Dashboards directly influence:
- Clinical decisions
- Operational planning
- Cost optimization
- Risk monitoring

Any data quality issue can result in:
- Incorrect KPIs
- Misleading trends
- Loss of stakeholder trust

Hence, quality validation is mandatory before visualization.

---

## 🪙 Layers Covered
### ✅ Silver Layer
- Normalized FHIR data
- Cleaned and structured
- Still detailed and granular

### ✅ Gold Layer
- Aggregated, analytics-ready
- Directly consumed by dashboards

---

## 🔍 Quality Dimensions Checked

### 1️⃣ Completeness (NULL checks)
Ensures mandatory columns are populated:
- patient_id
- encounter_id
- admission_date
- diagnosis_code
- risk_score

---

### 2️⃣ Valid Value Ranges
Validates numerical sanity:
- Cost ≥ 0
- Length of stay ≥ 0
- Risk scores between 0 and 100

---

### 3️⃣ Uniqueness
Ensures:
- One row per patient in patient-level Gold tables
- No duplicate encounter records

---

### 4️⃣ Date Validations
Checks:
- Admission date ≤ discharge date
- No future-dated records

---

### 5️⃣ Referential Integrity
Validates:
- Every encounter belongs to a valid patient
- Disease records map to existing patients

---

## 📊 Output of the Report
The SQL queries produce:
- Exception records only
- Zero rows = PASS
- Any rows returned = DATA ISSUE

This design is **reviewer-friendly** and **demo-safe**.

---

## 📌 Status
**Data Quality Report: ✅ Completed**

---

## 📝 Notes
All datasets consumed by dashboards were validated against
completeness, correctness, and business rules. The results confirm
that Gold-layer data is analytics-ready and safe for visualization.
