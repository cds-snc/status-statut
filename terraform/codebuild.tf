module "github_runner" {
  source = "github.com/cds-snc/terraform-modules//codebuild_github_runner?ref=v10.8.2"

  project_name                 = "cds-snc-status-statut"
  github_repository_url        = "https://github.com/cds-snc/status-statut.git"
  github_personal_access_token = var.github_personal_access_token

  billing_tag_value = "SRE"
}