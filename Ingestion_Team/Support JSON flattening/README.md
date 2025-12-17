# Support JSON Flattening – Silver Layer Preparation

## Objective
This step prepares raw FHIR JSON data from the Bronze layer for the Silver
layer by flattening nested structures into a relational format.

FHIR data is deeply nested by design and requires controlled flattening
to enable analytics and joins.

---

## Why Flattening Is Required
- FHIR JSON contains arrays and nested objects
- Analytics tools require tabular structure
- Joins across resources need stable primary keys

Flattening is performed carefully to avoid data loss.

---

## Scope
- Explode nested arrays
- Extract commonly used attributes
- Preserve original identifiers
- Maintain one table per FHIR resource

---

## Status
**Completed**

Notes:
> FHIR JSON flattening implemented using Spark explode patterns for Silver normalization.
