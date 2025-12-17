# Flattening Design Decisions

## Why explode_outer?
To avoid losing records where arrays are empty or null.

---

## Why defer joins?
Flattening is resource-specific.
Cross-resource joins are performed only after Silver normalization.

---

## Why patient-centric references?
All analytics ultimately pivot around patient-level insights.

---

## Design Outcome
Flattening logic is scalable, reusable,
and safe for evolving FHIR schemas.
