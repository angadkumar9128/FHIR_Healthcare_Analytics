# ML Analytics – Dashboard Metrics

## Objective
This module defines the metrics and KPIs used by dashboards built on top of
the Integrated Analytics layer.

The metrics are designed to support:
- Executive summaries
- Operational monitoring
- Population health analysis
- Risk-based decision making

---

## Data Source
All dashboard metrics are derived from:

gold.integrated_patient_analytics

No direct access to Silver or ML feature tables is allowed.

---

## Dashboard Audiences

- Business stakeholders
- Clinical operations teams
- Analytics reviewers
- Leadership dashboards

---

## Design Principles

- Aggregated metrics only
- Stable definitions
- Filter-friendly
- Time-aware
- Risk-aware
