terraform {
  backend "s3" {
    bucket = "maryamterraformbackendfile"
    key    = "backend/state"
    region = "us-east-1"
  }
}
