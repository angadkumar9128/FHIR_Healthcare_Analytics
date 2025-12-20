# Folder Structure Explanation

This document explains why each folder exists and what it contains.

## data/raw_fhir
- Contains sample or reference FHIR JSON files
- Used for development, testing, and demonstration
- No transformation applied

## bronze
- Ingests raw JSON into Delta tables
- Maintains original structure
- Supports schema evolution

## silver
- Converts nested FHIR JSON into relational format
- Each file represents one FHIR resource
- Ensures clean joins across resources

## gold
- Aggregated and integrated datasets
- Used by dashboards and analytics
- Optimized for query performance

## Ingestion_Team
- Team-specific documentation
- Review notes, setup details, and screenshots
