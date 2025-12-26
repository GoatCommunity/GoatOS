# Getting Started with GoatOS

## System Requirements

- **CPU**: 64-bit processor
- **RAM**: 4GB minimum (8GB recommended)
- **Disk**: 20GB minimum
- **USB**: 8GB+ for live boot

## Installation

### Option 1: Live Boot (USB)

```bash
# Write ISO to USB
sudo goat-usb goatos-amd64.hybrid.iso

# Or use Ventoy
sudo install-ventoy
sudo ventoy -i /dev/sdX
# Then copy the ISO to the Ventoy USB
```

### Option 2: Install to Disk

1. Boot from USB
2. Open Calamares installer
3. Follow the installation wizard

## First Steps

After booting GoatOS:

### 1. Update Tools

```bash
sudo goat-update
```

### 2. Configure VPN (for HTB/THM)

```bash
# Download your .ovpn file from HTB/THM
htb-vpn ~/VPN/your-file.ovpn
# or
thm-vpn ~/VPN/your-file.ovpn
```

### 3. Explore Wordlists

```bash
ls /opt/wordlists/
# SecLists, PayloadsAllTheThings, custom/
```

### 4. Quick Recon

```bash
recon example.com
```

## Directory Structure

| Path | Description |
|------|-------------|
| `/opt/wordlists/` | All wordlists |
| `/opt/cheatsheets/` | Offline cheatsheets |
| `~/Projects/` | Your pentest projects |
| `~/Reports/` | Generated reports |
| `~/Tools/` | Custom tools |
| `~/VPN/` | VPN config files |

## Default Credentials

| User | Password |
|------|----------|
| `user` | `live` |

## Useful Commands

| Command | Description |
|---------|-------------|
| `goat-update` | Update Go tools |
| `goat-usb` | Write ISO to USB |
| `goat-report` | Generate pentest report |
| `recon <domain>` | Quick reconnaissance |
| `webscan <url>` | Full vulnerability scan |
| `fuzz <url>/FUZZ` | Directory fuzzing |
