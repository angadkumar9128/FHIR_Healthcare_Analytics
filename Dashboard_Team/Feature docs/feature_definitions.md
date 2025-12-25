# 📘 Feature Definitions – Dashboard Team

This document provides **business-friendly definitions**
for all features used in dashboards.

---

## 🏥 Admission Features

### total_admissions
- **Description:** Total number of admissions recorded for a given date
- **Source Table:** patient_admissions
- **Type:** Aggregate (COUNT)
- **Used In:** Admissions trend dashboard

---

### avg_length_of_stay
- **Description:** Average duration (in days) of patient stays
- **Source Table:** patient_admissions
- **Type:** Aggregate (AVG)
- **Used In:** Capacity & utilization dashboards

---

## 💰 Cost Features

### total_cost
- **Description:** Total healthcare cost incurred per encounter
- **Source Table:** cost_analysis
- **Type:** Aggregate (SUM)
- **Used In:** Cost & utilization dashboards

---

## 🦠 Disease Features

### diagnosis
- **Description:** Clinical diagnosis assigned to patients
- **Source Table:** disease_patterns
- **Type:** Categorical
- **Used In:** Disease distribution dashboard

---

### patient_count
- **Description:** Number of patients associated with a diagnosis
- **Source Table:** disease_patterns
- **Type:** Aggregate (COUNT)
- **Used In:** Population health dashboards

---

## 💊 Medication Features

### prescription_count
- **Description:** Number of prescriptions issued per medication
- **Source Table:** medication_trends
- **Type:** Aggregate (COUNT)
- **Used In:** Medication trend dashboards

---

## 🧬 Immunization Features

### vaccinated_patients
- **Description:** Count of patients vaccinated for a specific vaccine
- **Source Table:** immunization_coverage
- **Type:** Aggregate (COUNT)
- **Used In:** Immunization coverage dashboards
