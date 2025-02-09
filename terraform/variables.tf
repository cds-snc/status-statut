variable "github_personal_access_token" {
  description = "The GitHub personal access token to use for the CodeBuild project"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "The AWS region to deploy to"
  type        = string
}
