<div align="center">

# 🐐 GoatOS

**Web/API Pentesting Linux Distribution**

[![Debian](https://img.shields.io/badge/Debian-Bookworm-A81D33?style=flat-square&logo=debian)](https://debian.org)
[![GNOME](https://img.shields.io/badge/GNOME-Shell-4A86CF?style=flat-square&logo=gnome&logoColor=white)](https://gnome.org)
[![Focus](https://img.shields.io/badge/Focus-Web%2FAPI-00d4aa?style=flat-square)](https://github.com)
[![License](https://img.shields.io/badge/License-GPL--3.0-blue?style=flat-square)](LICENSE)

*Unlike Kali/Parrot that try to do everything, GoatOS focuses exclusively on Web & API security testing.*

</div>

---

## Why GoatOS?

| | Kali/Parrot | GoatOS |
|---|-------------|--------|
| **Focus** | Everything | Web/API only |
| **Size** | 3-4GB+ | ~2GB |
| **Tools** | 600+ (bloat) | Curated |
| **Theme** | Generic | GoatSecurity Dark |

---

## Features

### 🔧 Pre-installed Tools

| Category | Tools |
|----------|-------|
| **Recon** | subfinder, httpx, katana, dnsx |
| **Scanning** | nuclei, nikto, whatweb, nmap |
| **Fuzzing** | ffuf |
| **SQLi/XSS** | sqlmap, dalfox |
| **Proxy** | Burp Suite, mitmproxy |
| **API** | Postman, httpie, jwt-hack |
| **Dev** | VSCodium, Docker, Obsidian |

### 📚 Wordlists

```
/opt/wordlists/
├── SecLists/
├── PayloadsAllTheThings/
└── custom/api-endpoints.txt
```

### 🎨 GoatSecurity Theme

- Pure black (`#000000`) background
- White (`#ffffff`) text
- Custom GNOME Shell styling
- Plymouth boot splash
- Custom GRUB menu

### 🔒 Privacy & Security

- UFW Firewall (deny incoming)
- Chromium with uBlock Origin, Bitwarden, Dark Reader
- DuckDuckGo as default search
- Tor Browser included

### 🌐 VPN Ready

```bash
htb-vpn your-file.ovpn   # HackTheBox
thm-vpn your-file.ovpn   # TryHackMe
```

### 🐳 Docker Labs

```bash
vuln-lab      # Start DVWA
juice-shop    # Start OWASP Juice Shop
```

---

## Quick Commands

| Command | Description |
|---------|-------------|
| `recon <domain>` | Subdomain enumeration + probe |
| `webscan <url>` | Full vulnerability scan |
| `fuzz <url>/FUZZ` | Directory fuzzing |
| `goat-update` | Update all Go tools |

---

## Building

```bash
# Requirements
sudo apt install live-build debootstrap

# Build
cd /path/to/goatos
rm -f .build
sudo lb clean --purge
sudo lb config
sudo lb build
```

---

## Default Credentials

| User | Password |
|------|----------|
| `user` | `live` |

---

<div align="center">

**Made with 🐐 by GoatSecurity**

</div>
