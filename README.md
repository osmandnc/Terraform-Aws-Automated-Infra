# Automated Cloud Web Infrastructure with Terraform & Docker

An end-to-end Infrastructure as Code (IaC) project deploying a containerized web application on AWS using modern DevOps practices.

## Architecture Overview

* **Cloud Provider:** AWS (Region: `eu-central-1`)
* **State Management:** AWS S3 Remote Backend with State Locking (`use_lockfile`) and server-side encryption.
* **Dynamic Querying:** Canonical Ubuntu 22.04 LTS AMI dynamically fetched using Terraform Data Sources (`aws_ami`).
* **Automated Bootstrapping:** Cloud-init (`user_data.sh`) automatically installs Docker and runs a containerized Nginx web server on initial boot.
* **Network & Security:** Custom AWS Security Group configuring minimal inbound web/SSH access and unrestricted outbound egress.
* **Project Structure:** Clean separation of concerns across configuration files (`provider.tf`, `variables.tf`, `main.tf`, `outputs.tf`).

## Project Layout

```text
.
├── .gitignore
├── main.tf
├── outputs.tf
├── provider.tf
├── variables.tf
├── scripts/
│   └── user_data.sh
└── README.md
