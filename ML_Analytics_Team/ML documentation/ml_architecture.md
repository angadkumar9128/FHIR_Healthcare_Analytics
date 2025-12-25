# ML Analytics Architecture

## High-Level Architecture

FHIR Data
 
  ↓

Bronze Layer (Raw JSON)

   ↓

Silver Layer (Normalized)

   ↓

Gold Layer (Analytics)

   ↓

ML Analytics Layer

   ↓

Dashboards / ML Models

---

## Architectural Principles

- ML Analytics consumes only Gold data
- No dependency on raw or semi-structured data
- Modular and replaceable components
- Clear separation of concerns
