# Bronze Ingestion Pattern

## Ingestion Approach
- Read raw JSON using Spark
- Enable schema inference
- Write data as Delta tables

## Common Ingestion Steps
1. Identify resource type (Patient, Encounter, etc.)
2. Read JSON files from raw storage
3. Infer schema automatically
4. Write to Delta Bronze schema

## Pattern Benefits
- Generic ingestion logic
- Easily extensible for new FHIR resources
- Supports incremental ingestion
