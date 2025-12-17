# Governance Overview

## Catalog & Schema Design
- Separate schemas for raw, bronze, silver, and gold layers
- Clear naming convention for discoverability

## Data Reliability
- Delta Lake ensures ACID compliance
- Time travel enables rollback and audit

## Schema Evolution
- New fields in FHIR JSON handled without breaking pipelines
- Schema enforcement deferred to Silver layer

## Access Control (Conceptual)
- Catalog-based access enables future role-based security
