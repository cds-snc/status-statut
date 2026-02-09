module "github_runner" {
  source = "github.com/cds-snc/terraform-modules//codebuild_github_runner?ref=v10.11.0"

  project_name               = "cds-snc-status-statut"
  github_repository_url      = "https://github.com/cds-snc/status-statut.git"
  github_codeconnection_name = "cds-snc-status-statut"

  billing_tag_value = "SRE"
}