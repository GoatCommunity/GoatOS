<div align="center">

# 🐐 GoatOS

**Web/API Pentesting Linux Distribution**

[![Debian](https://img.shields.io/badge/Debian-Bookworm-A81D33?style=flat-square&logo=debian)](https://debian.org)
[![GNOME](https://img.shields.io/badge/GNOME-Shell-4A86CF?style=flat-square&logo=gnome&logoColor=white)](https://gnome.org)
[![Focus](https://img.shields.io/badge/Focus-Web%2FAPI-00d4aa?style=flat-square)](https://github.com)
[![License](https://img.shields.io/badge/License-GPL--3.0-blue?style=flat-square)](LICENSE)

*Unlike Kali/Parrot that try to do everything, GoatOS focuses exclusively on Web & API security testing.*

[Documentation](docs/) | [Getting Started](docs/getting-started.md) | [Tools](docs/tools/)

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
| **SQLi/XSS** | sqlmap |
| **Proxy** | Burp Suite, mitmproxy |
| **API** | Postman, httpie, jwt-hack |
| **Dev** | VSCodium, Docker, Obsidian |

### 📚 Wordlists & Cheatsheets

```
/opt/wordlists/     - SecLists, PayloadsAllTheThings
/opt/cheatsheets/   - Offline guides
```

### 🎨 GoatSecurity Theme

- Pure black (`#000000`) background
- Custom GNOME Shell, Plymouth, GRUB
- Chromium with uBlock Origin, Bitwarden, Dark Reader

### 📝 Report Generator

```bash
goat-report                    # Interactive mode
goat-report -p "Client" -t "target.com"
```

### 🌐 VPN & Labs Ready

```bash
htb-vpn your-file.ovpn         # HackTheBox
vuln-lab                       # Start DVWA
juice-shop                     # Start Juice Shop
```

---

## Quick Commands

| Command | Description |
|---------|-------------|
| `recon <domain>` | Subdomain enumeration |
| `webscan <url>` | Vulnerability scan |
| `fuzz <url>/FUZZ` | Directory fuzzing |
| `goat-update` | Update Go tools |
| `goat-report` | Generate report |
| `goat-usb <iso>` | Write ISO to USB |

---

## Documentation

📖 Full documentation available in [`docs/`](docs/)

- [Getting Started](docs/getting-started.md)
- [Web Pentesting Guide](docs/guides/web-pentesting.md)
- [API Testing Guide](docs/guides/api-testing.md)
- [Reporting Guide](docs/guides/reporting.md)
- [Tools Reference](docs/tools/)

---

## Building

```bash
sudo apt install live-build debootstrap
cd goatos && rm -f .build
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
