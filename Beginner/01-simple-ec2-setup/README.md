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

3. Initialize Terraform

   Initialize Terraform to install necessary providers and set up the backend:

   ```bash
   terraform init
   ```

4. Apply the Terraform Configuration

   Apply the Terraform configuration to create the resources:

   ```bash
   terraform apply
   ```

   When prompted, confirm the apply with yes.

5. SSH into the EC2 Instance

   After the apply is complete, Terraform will output the public IP address of the EC2 instance. Use this to SSH into the instance:

   ```bash
   ssh -i /path/to/your-key.pem ec2-user@<instance_public_ip>
   ```
