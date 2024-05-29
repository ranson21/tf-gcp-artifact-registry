locals {
  description = var.description == "" ? "${title(lower(var.format))} artifact repository" : var.description
}

resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = var.name
  format        = var.format
  description   = local.description
}
