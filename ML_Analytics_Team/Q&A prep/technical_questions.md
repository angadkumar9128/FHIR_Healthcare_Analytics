# Technical Questions & Answers

### Q1. How is data leakage avoided?
All features are computed using historical, time-windowed data.
No future information is used.

---

### Q2. How do you handle schema changes?
Only Gold tables are consumed. Any schema change is handled upstream
before reaching ML Analytics.

---

### Q3. Can ML models replace this logic?
Yes. Feature tables and target variables already exist.
Models can be plugged in without redesign.

---

### Q4. How do you tune the system?
Through controlled weight and threshold tuning with versioning and comparison
against baselines.

---

### Q5. How is performance ensured?
Heavy computation is done upstream. Dashboards use pre-aggregated Gold views.
