# 📊 Dashboard Team – Build Dashboards

## 📌 Task Objective
The goal of this task is to build **multiple interactive dashboards**
using Gold-layer healthcare analytics data.

Dashboards are designed to:
- Support clinical, operational, and executive users
- Enable filtering, drill-down, and trend analysis
- Use pre-aggregated Gold views for performance
- Follow governance and Lakehouse best practices

---

## 🪙 Data Source
Catalog:
angad_kumar91

Schema:
fhir_healthcare_analytics_gold

Dashboards strictly consume **Gold tables & views only**.

---

## 📊 Dashboard Types Built

### 1️⃣ Admissions & Utilization Dashboard
- Daily admissions trend
- Average length of stay
- Admission volume patterns

### 2️⃣ Cost Analytics Dashboard
- Cost by patient
- Cost by encounter
- High-cost encounter identification

### 3️⃣ Disease & Population Health Dashboard
- Disease prevalence
- Encounter frequency by diagnosis
- Population burden insights

### 4️⃣ Patient 360° Dashboard
- Patient-level drill-down
- Encounter, diagnosis, and cost context

### 5️⃣ Preventive Care Dashboard
- Immunization coverage
- Vaccination distribution

### 6️⃣ Medication & Procedure Trends Dashboard
- Medication usage patterns
- Procedure frequency analysis

---

## ⚡ Design Principles
- SQL-driven metrics (no UI calculations)
- Filter-friendly date and dimension columns
- Pre-aggregated views for performance
- Clear naming for dashboard widgets

---

## 📌 Status
**Build Dashboards: ✅ Completed**

---

## 📝 Notes
Dashboards are built using modular, reusable SQL views that
support interactive filtering, drill-down analysis, and
executive-level insights while maintaining governance and performance.
