
# 1. Version Settings
terraform {
  required_version = ">= 1.1.0" # Minimum CLI version allowed

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use any version from 5.0 to 5.9
    }
  }
}

# 2. Provider Configuration
provider "aws" {
  region = "us-east-1" # Virginia Region
}

# 3. Resource Definitions
resource "aws_instance" "web-server" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t3.micro"
  tags = {
    Name = "Web-Server"
  }
}
