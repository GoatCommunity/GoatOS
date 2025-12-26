# Tools Reference

Quick reference for all GoatOS tools.

## Reconnaissance

| Tool | Usage | Description |
|------|-------|-------------|
| subfinder | `subfinder -d domain` | Subdomain enumeration |
| httpx | `httpx -l hosts.txt` | HTTP probing |
| katana | `katana -u url` | Web crawling |
| dnsx | `dnsx -l domains.txt` | DNS resolver |
| whatweb | `whatweb url` | Technology detection |

## Scanning

| Tool | Usage | Description |
|------|-------|-------------|
| nuclei | `nuclei -u url` | Vulnerability scanner |
| nikto | `nikto -h url` | Web server scanner |
| nmap | `nmap -sV target` | Port/service scanner |

## Fuzzing

| Tool | Usage | Description |
|------|-------|-------------|
| ffuf | `ffuf -u url/FUZZ -w wordlist` | Fast fuzzer |

## Exploitation

| Tool | Usage | Description |
|------|-------|-------------|
| sqlmap | `sqlmap -u url` | SQL injection |
| jwt-hack | `jwt-hack decode -t token` | JWT manipulation |

## API Testing

| Tool | Usage | Description |
|------|-------|-------------|
| httpie | `http GET url` | HTTP client |
| Postman | GUI | API testing suite |
| Burp Suite | GUI | Proxy/interceptor |

## GoatOS Custom

| Tool | Usage | Description |
|------|-------|-------------|
| goat-update | `sudo goat-update` | Update Go tools |
| goat-usb | `sudo goat-usb iso` | Write ISO to USB |
| goat-report | `goat-report` | Generate report |
| htb-vpn | `htb-vpn file.ovpn` | Connect to HTB |
| thm-vpn | `thm-vpn file.ovpn` | Connect to THM |

## Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| recon | Function | Subdomain + httpx |
| webscan | Function | Nuclei + nikto |
| fuzz | ffuf + common.txt | Dir fuzzing |
| b64d | base64 -d | Decode base64 |
| b64e | base64 | Encode base64 |
| myip | curl ifconfig.me | Get external IP |
