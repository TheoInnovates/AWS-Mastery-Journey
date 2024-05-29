# Setting Up S3 Bucket and DynamoDB Table for Terraform State Management

To manage Terraform state files, you need to set up an S3 bucket for storage and a DynamoDB table for state locking. Follow these steps to create these resources manually.

## Prerequisites

- AWS CLI configured with your credentials
- AWS Management Console access

## Steps to Create an S3 Bucket

1. **Open the AWS Management Console** and navigate to the S3 service.

2. **Create a new bucket**:

   - Click on the "Create bucket" button.
   - Enter a unique bucket name (e.g., `your-unique-s3-bucket-name`).
   - Select a region (ensure it matches the region you will use for your Terraform projects, e.g., `us-east-1`).
   - Click "Create bucket" at the bottom of the page.

3. **Enable versioning**:
   - Select your newly created bucket from the list.
   - Click on the "Properties" tab.
   - Under the "Bucket Versioning" section, click "Edit".
   - Select "Enable" and click "Save changes".

## Steps to Create a DynamoDB Table

1. **Open the AWS Management Console** and navigate to the DynamoDB service.

2. **Create a new table**:
   - Click on the "Create table" button.
   - Enter a table name (e.g., `your-dynamodb-table-name`).
   - Set the primary key to `LockID` (Data type: String).
   - Leave the default settings for other options.
   - Click "Create table".

## Configuring Terraform to Use the S3 Bucket and DynamoDB Table

After creating the S3 bucket and DynamoDB table, configure your Terraform backend to use these resources. Add a `backend.tf` file to your Terraform configuration with the following content:

### backend.tf

```hcl
terraform {
  backend "s3" {
    bucket         = "your-unique-s3-bucket-name"
    key            = "path/to/your/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "your-dynamodb-table-name"
    encrypt        = true
  }
}
```
