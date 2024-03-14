provider "aws" {
  region = "us-east-2"  # Replace with your desired AWS region
}

resource "aws_ecr_repository" "my_repository" {
  name = "my-ecr-repository"  # Replace with your desired repository name

  # Optional: Additional settings
  # image_tag_mutability   = "IMMUTABLE"  # Or "MUTABLE"
  # image_scanning_configuration {
  #   scan_on_push = true
  # }
  # encryption_configuration {
  #   encryption_type = "AES256"
  # }
}

output "repository_url" {
  value = aws_ecr_repository.my_repository.repository_url
}