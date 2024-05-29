# 01-simple-ec2-setup

This project sets up a simple EC2 instance with Terraform, including a VPC, public subnets, an internet gateway, and security groups. All resources are tagged with a default name "simple-ec2".

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS CLI configured with your credentials
- An existing SSH key pair in your AWS account
- An S3 bucket and DynamoDB table for Terraform state management

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/TheoInnovates/AWS-Mastery-Journey.git
   cd AWS-Mastery-Journey/Beginner/01-simple-ec2-setup
   ```

2. Configure Backend for Terraform State

   ```
   Update backend.tf with your S3 bucket name, path, and DynamoDB table name.
   ```
