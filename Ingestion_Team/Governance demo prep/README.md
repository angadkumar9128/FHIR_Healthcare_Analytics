# Risk Input Preparation – Gold Layer

## Objective
This step prepares basic healthcare risk indicators using existing
Silver and Gold datasets.

The goal is not to build a full clinical risk model, but to generate
risk-ready inputs that can be consumed by analytics, dashboards,
or downstream ML models.

---

## Risk Inputs Prepared
- Patient age
- Number of hospital encounters
- Chronic condition presence
- High observation frequency

---

## Design Approach
- Rule-based logic
- Explainable calculations
- Uses analytics-ready Gold/Silver tables

---

## Folder Structure to ADD

Ingestion_Team/

└── Risk input prep/

    ├── README.md
    
    ├── risk_logic_explanation.md
    
    └── risk_input_gold.sql
    
---

## Status
**Completed**

Review Note:
> Basic, explainable healthcare risk inputs prepared using Gold and Silver data.
