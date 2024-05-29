terraform {
  backend "s3" {
    bucket         = "your-unique-bucket-name"
    key            = "path/to/your/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "your-dynamodb-table-name"
    encrypt        = true
  }
}
