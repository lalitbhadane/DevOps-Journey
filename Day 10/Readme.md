# Day 10 – Full Stack Automation: Deploying a PHP-MySQL Ecommerce Application on Ubuntu (WSL)

📅 **Date:** July 18, 2025  
🔗 **Project Repo:** [View on GitHub](https://github.com/lalitbhadane/Lalit-Ecom-Application)

## 🧩 Skills Practiced

### 🛠️ Linux System Administration
- Installed & configured Apache, PHP, and MySQL on Ubuntu via WSL
- Managed service status: `systemctl`, `service`
- Handled file permissions for Apache web directory

### 🛠️ Bash Scripting for Automation
- Wrote deployment script to:
  - Install required packages
  - Set up database, users, permissions
  - Deploy and configure web application
  - Seed database with sample data

### 🛠️ DevOps Troubleshooting
- Solved MySQL root auth issues (configured separate MySQL user)
- Installed missing PHP-MySQL driver to bridge PHP & MySQL
- Resolved filesystem permission errors in Apache serving PHP apps
- WSL-specific considerations: bypassed `firewalld` complexities

### 🛠️ Testing & Validation
- Service verification via:
  - CLI: `curl http://localhost/web-app`
  - Browser: `http://localhost/web-app`
  - Logs: `sudo tail -n 50 /var/log/apache2/error.log`
- Manual DB check via MySQL CLI

### ✅ Outcome
This project reinforced:
- End-to-end environment setup
- Writing idempotent automation scripts
- Service troubleshooting in Linux
- Understanding of WSL deployment behaviors
