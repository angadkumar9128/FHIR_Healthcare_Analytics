-- Restore Silver table to previous version
RESTORE TABLE silver.encounter TO VERSION AS OF 3;

-- Validate rollback
SELECT COUNT(*) FROM silver.encounter;
