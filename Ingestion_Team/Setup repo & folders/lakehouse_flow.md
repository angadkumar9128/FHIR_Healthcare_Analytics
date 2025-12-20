# Bronze–Silver–Gold Data Flow

1. Raw FHIR JSON files are placed in data/raw_fhir
2. Bronze ingestion reads JSON and writes Delta tables
3. Silver layer flattens nested JSON using:
   - from_json
   - explode
   - struct extraction
4. Gold layer joins multiple Silver tables to create:
   - Patient summaries
   - Admissions analytics
   - Disease patterns

This ensures data traceability and analytical readiness.
