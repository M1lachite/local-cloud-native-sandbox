# Local Cloud-Native Sandbox

An educational and hands-on repository focused on building a cloud-native ecosystem. This project combines a locally executed application (**Floci**) with cloud infrastructure on AWS managed via Infrastructure as Code (Terraform).

---

## Architecture & Repository Structure

The project is structured into two main domains:

1. **Application (Local Environment):** The Floci application running locally using Docker Compose.
2. **Infrastructure (AWS Cloud):** A complete AWS infrastructure for an EKS cluster built with Terraform, organized into autonomous and reusable modules.

```text
├── docker_compose/          # Local containerized environment for Floci
│   └── docker-compose.yml
├── terraform/               # Infrastructure as Code directory
│   ├── network/             # VPC, subnets, and NAT Gateways
│   │   ├── network.tf
│   │   ├── providers.tf
│   │   ├── terraform.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   ├── iam/                 # AWS IAM roles and access policies
│   │   ├── iam.tf
│   │   ├── providers.tf
│   │   ├── terraform.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   └── eks/                 # EKS cluster and Node Groups configuration
│       ├── data.tf
│       ├── eks.tf
│       ├── providers.tf
│       ├── terraform.tf
│       ├── terraform.tfvars
│       └── variables.tf
└── README.md
```

## Prerequisites
Before getting started, ensure you have the following tools installed:

Docker Desktop / Docker Compose

Terraform >= 1.3

AWS CLI configured with appropriate permissions (AWS CLI needs to be configured to send instructions to Floci instead of the real AWS cloud. You can do it by setting up proper variables.).

## Quick Start
1. Run Application Locally (Docker)
To spin up the Floci application locally:

```
docker compose up -d
```
2. Deploy AWS Infrastructure (Terraform)
To provision the cloud environment:

```
# Initialize backend and modules
terraform init

# Review execution plan
terraform plan

# Apply infrastructure changes
terraform apply
```

## Project Standards & Conventions
**Commit Standard:** Conventional Commits (feat:, refactor:, docs:, fix:)

**Branching Model:** Conventional Branches (feature/..., refactor/..., docs/...)
