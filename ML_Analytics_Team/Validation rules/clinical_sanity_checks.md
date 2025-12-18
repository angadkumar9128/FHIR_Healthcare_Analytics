# Clinical Sanity Checks

## Examples

- A patient cannot have negative encounters
- Average length of stay > 1 year is invalid
- Zero encounters with high cost is flagged
- High chronic burden with zero encounters is flagged

---

## Purpose

These checks prevent clinically impossible or misleading analytics results
and protect downstream ML models from bad signals.
