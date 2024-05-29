# AWS Mastery Journey

Welcome to the AWS Mastery Journey! This repository contains a series of projects designed to help you master AWS by building real-world infrastructure and applications using Terraform.

## Projects Overview

- **Beginner Projects**: Simple setups to get you started with AWS.
- **Intermediate Projects**: More complex implementations to deepen your understanding.
- **Advanced Projects**: Full-scale solutions to prepare you for real-world challenges.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [AWS CLI](https://aws.amazon.com/cli/) installed and configured
- An AWS account with administrative access

### Steps to Install AWS CLI

1. **Download the AWS CLI**:

   - For Windows: [AWS CLI MSI installer](https://awscli.amazonaws.com/AWSCLIV2.msi)
   - For macOS: [AWS CLI pkg installer](https://awscli.amazonaws.com/AWSCLIV2.pkg)
   - For Linux:

     ```bash
     curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
     unzip awscliv2.zip
     sudo ./aws/install
     ```

2. **Verify the installation**:

   ```bash
   aws --version
   ```

### Steps to Create an Admin User in AWS

1. **Open the AWS Management Console**:

   - Navigate to the IAM (Identity and Access Management) service.

2. **Create a new user**

   - Click on "Users" in the left-hand menu.
   - Click on the "Add user" button.
   - Enter a username (e.g., terraform-admin).
   - Select "Programmatic access" for the access type.
   - Click "Next: Permissions".

3. **Attach policies**

   - Select "Attach existing policies directly".
   - Search for and select the AdministratorAccess policy.
   - Click "Next: Tags" (optional).
   - Click "Next: Review".
   - Click "Create user".

4. **Download the credentials**

   - After the user is created, download the .csv file with the access key and secret key, or copy them to a secure location.

### Configure AWS CLI

1. **Configure the AWS CLI with your new user**

   ```bash
    aws configure
   ```

   When prompted, enter the following information:

   - AWS Access Key ID: Enter the access key ID from the .csv file.
   - AWS Secret Access Key: Enter the secret access key from the .csv file.
   - Default region name: Enter your preferred region (e.g., us-east-1).
   - Default output format: Enter json.
