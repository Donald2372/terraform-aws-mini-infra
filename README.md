# ☁️ Terraform AWS Mini Infrastructure

This repository showcases how to deploy a secure and minimal cloud infrastructure using **Terraform** on the **AWS Free Tier**. It is designed for cloud beginners and students in cybersecurity or DevOps to practice Infrastructure as Code (IaC) safely and cost-effectively.

---

## 📌 Project Objectives

- ✅ Launch a Free Tier **EC2 Ubuntu instance**
- ✅ Create a **private S3 bucket**
- ✅ Enable **CloudTrail** for auditing
- ✅ Assign a **basic IAM role** to EC2
- ✅ Learn Terraform in a realistic AWS scenario

---

## 📁 Project Structure

```
terraform-aws-mini-infra/
|
├── main.tf              # Main Terraform configuration
├── variables.tf         # Input variables for customization
├── outputs.tf           # Outputs displayed after provisioning
├── README.md            # This documentation file
└── screenshots/         # Screenshots from AWS Console
    ├── Ec2_instance (2).png
    └── S3_bucket (2).png
```

---

## 🧰 Tools & Technologies

- **Terraform v1.x**
- **AWS Free Tier account**
- **AWS CLI (optional)**
- **IAM, EC2, S3, CloudTrail**

---

## 🚀 Quick Start Guide

### Step 1: Clone this Repository

```bash
git clone https://github.com/Donald2372/terraform-aws-mini-infra.git
cd terraform-aws-mini-infra
```

### Step 2: Initialize Terraform

```bash
terraform init
```

### Step 3: Deploy the Infrastructure

```bash
terraform apply -auto-approve
```

⏱️ After 1-2 minutes, the infrastructure will be deployed.

---

## 📄 Explanation of Terraform Files

### ✅ `main.tf`
Defines all resources to be created:
- `aws_instance`: EC2 instance (Ubuntu, Free Tier)
- `aws_s3_bucket`: Private S3 bucket
- `aws_cloudtrail`: Logs all AWS API events
- `aws_iam_role`: Basic EC2 assume role

### ✅ `variables.tf`
Allows customization of:
- AWS Region (default: `eu-central-1`)
- Instance type (`t2.micro` for Free Tier)
- AMI ID
- S3 bucket name

### ✅ `outputs.tf`
Displays:
- Public IP of the EC2 instance
- Bucket name created on AWS

---

## 🖼️ Screenshots

| EC2 Instance Overview              | S3 Bucket Console             |
|-----------------------------------|-------------------------------|
| ![EC2 Instance](screenshots/Ec2_instance%20(2).png) | ![S3 Bucket](screenshots/S3_bucket%20(2).png) |

---

## 💡 Free Tier Best Practices

- 🛑 Use **only one t2.micro instance** at a time
- 🧼 Stop or terminate EC2 instances after testing
- 🧺 Keep S3 storage under 5 GB
- 🧾 Delete unused CloudTrail logs
- 🛠️ Set up a billing alert to avoid surprises

---

## 📘 Learning Outcomes

By using this project, you will learn to:

- Automate infrastructure deployment with Terraform
- Manage security and cost-awareness using AWS Free Tier
- Practice clean code and modular infrastructure definition

---

## 🧠 About the Author

**Donald2372**  
🎓 Master's Student in Computer Science (Cybersecurity & Cloud)  
📧 [sadjoudonald@gmail.com](mailto:sadjoudonald@gmail.com)  
🔗 GitHub: [github.com/Donald2372](https://github.com/Donald2372)

---

## 📜 License

MIT License – feel free to reuse, fork, or improve.

---

## 🌐 Useful Links

- [Terraform AWS Provider Docs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [AWS Free Tier](https://aws.amazon.com/free/)
- [CloudTrail Overview](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
