# 📚 Dashboard Team – Dataset Understanding

## 📌 Task Objective
The objective of the Dataset Understanding task is to clearly understand
the structure, meaning, and analytical usage of the healthcare datasets
before building dashboards.

This ensures:
- Correct interpretation of healthcare metrics
- Accurate visualizations
- Business-aligned insights
- No misrepresentation of clinical or operational data

---

## 🏥 Data Source Overview
The datasets originate from **FHIR (Fast Healthcare Interoperability Resources)**–
based healthcare data and are processed through a Lakehouse architecture.

Pipeline:
Raw FHIR JSON → Bronze → Silver → Gold → Dashboards

The Dashboard Team consumes **only Gold-layer datasets**.

---

## 🪙 Gold Layer Datasets Used
The following Gold tables are used for dashboards:

### 1️⃣ patient_encounter_summary
**Granularity:** One row per patient

**Purpose:**
Provides a consolidated view of patient-level utilization, cost, and clinical burden.

**Key Columns:**
- patient_id
- encounter_count_30d
- avg_length_of_stay
- chronic_condition_count
- total_claim_cost

**Dashboard Usage:**
- Utilization analysis
- Cost analysis
- Patient segmentation

---

### 2️⃣ admissions_analytics
**Granularity:** One row per admission / encounter

**Purpose:**
Tracks patient admissions and discharge-related analytics.

**Key Columns:**
- encounter_id
- patient_id
- admission_date
- discharge_date
- length_of_stay

**Dashboard Usage:**
- Admissions trend dashboards
- LOS (Length of Stay) analysis
- Capacity planning insights

---

### 3️⃣ disease_breakdown
**Granularity:** One row per patient–disease mapping

**Purpose:**
Captures diagnosis and disease distribution across patients.

**Key Columns:**
- patient_id
- diagnosis_code
- diagnosis_description

**Dashboard Usage:**
- Disease prevalence dashboards
- Top diagnosis analysis
- Population health insights

---

### 4️⃣ risk_scores
**Granularity:** One row per patient

**Purpose:**
Represents calculated patient risk using clinical, utilization, and cost metrics.

**Key Columns:**
- patient_id
- utilization_score
- chronic_burden_score
- cost_intensity_score
- risk_score
- risk_band

**Dashboard Usage:**
- Risk monitoring dashboards
- High-risk patient identification
- Care prioritization views

---

## 🧠 Business Interpretation
Each dataset is mapped to business questions:

| Business Question | Dataset Used |
|------------------|-------------|
| How many patients are admitted daily? | admissions_analytics |
| Which diseases are most common? | disease_breakdown |
| Who are high-risk patients? | risk_scores |
| Which patients drive high costs? | patient_encounter_summary |

---

## 🔍 Data Relationships
- patient_id is the primary join key across all datasets
- encounter_id links admissions to patients
- Diagnosis data enriches patient context
- Risk scores aggregate features across datasets

---

## ⚠️ Data Assumptions
- Each patient_id is unique in patient-level tables
- Dates are normalized to standard formats
- Cost values are non-negative
- Risk scores are normalized between 0 and 100

---

## 📊 Dashboard Readiness Check
Before dashboard development:
✔ Dataset schema reviewed  
✔ Business meaning validated  
✔ Column-level understanding documented  
✔ Join paths identified  

---

## 📌 Status
**Dataset Understanding: ✅ Completed**

---

## 📝 Notes
Dataset understanding is clearly documented with business context,
technical structure, and dashboard mapping. This minimizes analytical
errors and ensures stakeholder trust in dashboard outputs.
