# Update README.md content to English version
readme_en = '''
# ☁️ Mini Cloud Infrastructure with Terraform + AWS Free Tier

This project deploys a minimal cloud infrastructure on AWS including:
- an **EC2 instance** (Ubuntu),
- a **private S3 bucket**,
- **CloudTrail logging** for activity tracking,
- and a **basic IAM role** for EC2.

## 📦 Project Content

| File           | Description                                  |
|----------------|----------------------------------------------|
| `main.tf`      | Infrastructure setup: EC2, S3, CloudTrail, IAM |
| `variables.tf` | Customizable input variables                 |
| `outputs.tf`   | Outputs displayed after deployment           |

## 🚀 Deployment

```bash
terraform init
terraform apply -auto-approve
