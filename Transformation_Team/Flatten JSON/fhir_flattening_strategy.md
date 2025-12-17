# FHIR JSON Flattening Strategy

## Challenge
FHIR resources contain deeply nested arrays and objects that
cannot be directly queried for analytics.

---

## Strategy Overview
- Parse JSON using from_json
- Flatten arrays using explode / explode_outer
- Alias nested fields with meaningful names
- Preserve resource identifiers and references

---

## Key Principles
- One logical record per resource
- Patient-centric reference extraction
- Null-safe flattening

---

## Result
Flattened datasets that maintain FHIR semantics
while enabling relational analytics.
