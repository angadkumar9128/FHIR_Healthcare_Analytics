# ML Analytics – Tuning Logic

## Objective
This module defines the tuning strategy used to improve ML Analytics
risk logic over time while preserving explainability, auditability,
and data governance.

Tuning is applied only after model outputs are validated in production.

---

## Why Tuning Is Required

Healthcare patterns evolve:
- Patient behavior changes
- Cost structures shift
- Utilization trends vary

Tuning allows the system to adapt without introducing black-box ML.

---

## What Can Be Tuned

- Feature weights
- Risk score thresholds
- Score caps and normalization rules

What cannot be tuned:
- Gold metric definitions
- Validation rules
- Core schema

---

## Tuning Philosophy

- Small, incremental changes
- One change at a time
- Always compared against a baseline
- Fully versioned
