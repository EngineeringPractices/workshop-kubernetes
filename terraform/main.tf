provider "google" {
  credentials = ""
  project      = "example-project-wayde191"
  region       = "us-central1-a"
}

resource "google_container_cluster" "primary" {
  name         = "first-cluster"
  zone         = "us-central1-a"
  initial_node_count = 1

  logging_service = "logging.googleapis.com"
  monitoring_service = "monitoring.googleapis.com"

  node_config {
    machine_type = "n1-standard-2"
  }

}
