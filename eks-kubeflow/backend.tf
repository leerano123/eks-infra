terraform {
  backend "s3" {
    bucket = "backend-ralph-bucket3452"
    key    = "eks/eks-infrastructure/state"
    region = "us-east-1"
  }
}
