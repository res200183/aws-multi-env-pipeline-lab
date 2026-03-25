# AWS Multi-Environment Pipeline Lab

## 🚀 Overview
This project demonstrates how to use AWS CodeBuild with:
- AWS Systems Manager Parameter Store (for configuration)
- AWS Secrets Manager (for secrets)
- GitHub as a source repository

## 🧱 Architecture
- GitHub → Source code
- AWS CodeBuild → Build process
- Parameter Store → Environment configs (dev)
- Secrets Manager → Sensitive data (prod)

## 🔐 Configuration Strategy
- Dev config stored in Parameter Store:
  - /app/dev/app_env
  - /app/dev/api_url

- Prod secret stored in Secrets Manager:
  - app/prod/db_password

## ⚙️ Build Process
CodeBuild uses `buildspec.yml` to:
- Pull config from Parameter Store
- Pull secrets from Secrets Manager
- Inject values as environment variables
- Execute application script

## 📂 Files
- `app.sh` — simple script using env variables
- `buildspec.yml` — build instructions

## 🔥 Key Concepts
- Runtime configuration injection
- IAM role-based access
- Least privilege principle
- Separation of environments

## ⚠️ Important Notes
- No secrets are stored in code
- Access is controlled via IAM
- Secrets are retrieved securely at runtime

## 📈 Result
Successful build confirms:
- Parameter Store integration works
- Secrets Manager integration works
- IAM permissions are correctly configured
