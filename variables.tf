variable "name" {
  type        = string
  description = "Name of the Artifact Registry"
}

variable "description" {
  type        = string
  description = "Optional description of repository"
  default     = ""
}

variable "format" {
  type        = string
  default     = "DOCKER"
  description = "Type of artifacts that will be stored in this registry"
}

variable "region" {
  type        = string
  default     = "us-central1"
  description = "Region where the artifact registry will be hosted"
}
