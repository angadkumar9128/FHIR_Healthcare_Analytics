# Governance Concepts Explained

## 1. Catalog-Based Organization
Each data layer is isolated using schemas under a single catalog.
This prevents accidental data mixing and improves access control.

## 2. Schema-Level Separation
- Bronze: Raw ingestion
- Silver: Cleaned and normalized
- Gold: Analytics-ready

## 3. ACID Transactions
Delta Lake ensures:
- Atomic writes
- Consistent reads
- Isolation between jobs
- Durable storage

## 4. Schema Evolution
FHIR schemas evolve over time.
Delta Lake supports:
- Adding new columns
- Backward compatibility
- Safe reprocessing

## 5. Auditability
Raw data preserved in Bronze enables:
- Reprocessing
- Traceability
- Compliance checks
