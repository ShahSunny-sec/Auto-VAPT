# Auto-WAPT 🕵️‍♂️

**Auto-WAPT** is an automated web application penetration testing (WAPT) script designed for quickly discovering URLs and identifying vulnerabilities in web applications. It leverages tools like **Nuclei**, **waybackurls**, and **gau** for URL discovery and vulnerability scanning.

## Features 🚀
- **Automated URL discovery** using archived sources for comprehensive target coverage.
- **Vulnerability scanning** with Nuclei using fuzzing templates for rapid detection.
- **Simple, command-line interface** with results outputted to a text file.

## Prerequisites 📋
- **bash** (Unix-based shell)
- **Nuclei** (installed automatically by the script if not present)
- **Golang** (required for installation of waybackurls and gau)

## Installation 🛠
1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/Auto-WAPT.git
   cd Auto-WAPT
