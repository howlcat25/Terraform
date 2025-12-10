# Terraform AWS Infrastructure

## State File

The `terraform.tfstate` file tracks your infrastructure's current state. It's excluded from Git for security reasons.

**Important:**
- Never commit state files to version control
- Contains sensitive data (IPs, resource IDs, secrets)
- Use remote backends (S3, Terraform Cloud) for team collaboration
- Keep local backups of state files

## Usage

```bash
terraform init
terraform plan
terraform apply
```
