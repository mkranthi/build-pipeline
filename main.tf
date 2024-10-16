provider "aws" {
  region = "us-east-1"  # Specify your AWS region
}

# IAM Role
resource "aws_iam_role" "jenkins_terraform_role" {
  name               = "jenkins-terraform-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

# Assume Role Policy
data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]  # Example service principal, change as needed
    }
  }
}

