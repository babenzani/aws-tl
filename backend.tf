terraform {
  backend "s3" {
    bucket = "tf-jkt-bucket"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}
