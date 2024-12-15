locals {
  description = var.description == "" ? "${title(lower(var.format))} artifact repository" : var.description
}

resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = var.name
  format        = var.format
  description   = local.description
}

resource "google_artifact_registry_repository_iam_member" "writer" {
  location   = google_artifact_registry_repository.repo.location
  repository = google_artifact_registry_repository.repo.name
  role       = "roles/artifactregistry.writer"
  member     = "user:${var.user_email}" # You'll need to add this variable
}
