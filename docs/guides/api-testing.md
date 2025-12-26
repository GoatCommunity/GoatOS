# API Testing Guide

## API Types

| Type | Description |
|------|-------------|
| REST | Most common, uses HTTP methods |
| GraphQL | Query language for APIs |
| SOAP | XML-based, legacy systems |
| gRPC | Google's RPC framework |

## Reconnaissance

### Find API Endpoints

```bash
# Crawl for API paths
katana -u https://target.com -jc -d 3

# Fuzz common endpoints
ffuf -u https://target.com/FUZZ -w /opt/wordlists/custom/api-endpoints.txt

# Look for documentation
curl https://target.com/swagger.json
curl https://target.com/openapi.yaml
curl https://target.com/api-docs
```

### Identify API Version

```bash
curl -I https://api.target.com/v1/users
curl -I https://api.target.com/v2/users
```

## Authentication Testing

### JWT Analysis

```bash
# Decode JWT
echo "eyJ..." | jwt-hack decode

# Crack weak secret
jwt-hack crack -t "token" -w /opt/wordlists/passwords/rockyou.txt

# Test none algorithm
jwt-hack none -t "token"
```

### API Key Testing

- Check for exposed keys in JS files
- Test key in different endpoints
- Check for rate limiting

## Common Vulnerabilities

### BOLA (Broken Object Level Authorization)

```bash
# Test accessing other user's resources
curl -H "Authorization: Bearer $TOKEN" https://api.target.com/users/1
curl -H "Authorization: Bearer $TOKEN" https://api.target.com/users/2
```

### Mass Assignment

```bash
# Try adding admin fields
curl -X POST https://api.target.com/users \
  -H "Content-Type: application/json" \
  -d '{"name":"test","role":"admin","isAdmin":true}'
```

### SQL Injection in API

```bash
sqlmap -u "https://api.target.com/users?id=1" --batch
```

### Rate Limiting

```bash
# Test with ffuf
ffuf -u https://api.target.com/login \
  -X POST \
  -d '{"user":"admin","pass":"FUZZ"}' \
  -w /opt/wordlists/passwords/common.txt \
  -rate 100
```

## GraphQL Testing

### Introspection

```bash
curl -X POST https://target.com/graphql \
  -H "Content-Type: application/json" \
  -d '{"query":"{ __schema { types { name } } }"}'
```

### Common Issues

- Exposed introspection
- Missing authorization
- Injection in queries
- Batching attacks

## Tools

| Tool | Usage |
|------|-------|
| Postman | API testing GUI |
| httpie | Command-line API client |
| Burp Suite | Intercept and modify requests |
| jwt-hack | JWT manipulation |
| nuclei | Automated scanning |
