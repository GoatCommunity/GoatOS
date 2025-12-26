# Reporting Guide

## Using goat-report

GoatOS includes a report generator that creates professional pentest reports.

### Basic Usage

```bash
goat-report
```

This will interactively ask for:
- Project name
- Target
- Findings
- Output format

### Command Options

```bash
goat-report --help

Options:
  -p, --project    Project name
  -t, --target     Target URL/domain
  -o, --output     Output file
  -f, --format     Format: md, html, pdf
```

### Example

```bash
goat-report -p "Acme Corp" -t "https://acme.com" -o report.md -f md
```

## Report Structure

1. **Executive Summary**
   - Brief overview
   - Risk rating
   - Key findings

2. **Scope**
   - Targets
   - Methodology
   - Timeframe

3. **Findings**
   - Severity
   - Description
   - Evidence
   - Remediation

4. **Appendix**
   - Tools used
   - Raw outputs

## Templates

See `/opt/templates/` for report templates:

- `pentest-report.md` - Full pentest report
- `vuln-finding.md` - Single vulnerability template
- `executive-summary.md` - Brief summary
