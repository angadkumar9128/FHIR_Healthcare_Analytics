# ⚡ Dashboard Team – Optimize Views

## 📌 Task Objective
The objective of the Optimize Views task is to ensure that all dashboards:
- Load quickly
- Scale with data growth
- Minimize compute cost
- Follow Databricks Lakehouse best practices

Optimizations are applied **only at the Gold layer**, where dashboards
consume data.

---

## 🪙 Optimization Scope
Catalog:
angad_kumar91

Schema:
fhir_healthcare_analytics_gold

Optimized assets:
- Gold tables
- Dashboard-facing views
- Integrated analytical views

---

## 🧠 Optimization Techniques Applied

### 1️⃣ Column Pruning
- Views expose only dashboard-required columns
- Avoids scanning unnecessary data

### 2️⃣ Pre-Aggregation
- Heavy aggregations done once in Gold
- Dashboards consume ready metrics

### 3️⃣ Filter Pushdown
- Date and dimension filters applied in SQL
- Improves query execution time

### 4️⃣ Z-Ordering (where applicable)
- Improves data skipping for frequent filters

### 5️⃣ Reusable Optimized Views
- Shared views across multiple dashboards
- Prevents repeated computation

---

## 📊 Impact on Dashboards
✔ Faster load times  
✔ Stable performance with growing data  
✔ Lower SQL warehouse cost  
✔ Better user experience  

---

## 📌 Status
**Optimize Views: ✅ Completed**

---

## 📝 Notes
Gold-layer views were optimized using Databricks best practices.
The approach ensures scalable, cost-efficient, and high-performance
dashboards suitable for production workloads.
