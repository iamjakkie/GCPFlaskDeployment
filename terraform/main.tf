provider "google" {
    credentials = file(var.credentials)
    project     = "tooploox-302310"
    region      = "us-central1"
}

terraform {
  backend "gcs"{
    bucket      = "20212001tp-test"
    prefix      = "dev"
    credentials = "credentials.json"
  }
}