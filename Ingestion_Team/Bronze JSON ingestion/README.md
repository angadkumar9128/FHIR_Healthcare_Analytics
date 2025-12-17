# Bronze JSON Ingestion – FHIR Healthcare Analytics

## Objective
The Bronze layer is responsible for ingesting raw FHIR JSON files into
Delta tables with minimal transformation while preserving the original
data structure.

This layer acts as the system of record for all incoming healthcare data.

---

## What Is Implemented
- Raw FHIR JSON ingested into Delta tables
- Schema inference used for semi-structured data
- No business logic applied
- Supports schema evolution

---

## Why Bronze Layer Exists
- Retains original healthcare data for audit and traceability
- Enables reprocessing without re-ingestion
- Separates ingestion from transformation logic

---

## Data Flow
data/raw_fhir → Spark Read (JSON) → Delta Bronze Tables

---

## Status
**Completed**

Review Note:
> Raw FHIR JSON successfully ingested into Delta Bronze layer.
