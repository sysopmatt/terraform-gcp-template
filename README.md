# terraform-gcp-template

Terraform project to deploy a VM with DNS to GCP.  Built as concept to learn a few new things.

## Environment setup

### Variables

- `GCP_BUCKET` -> storage bucket for state file
- `GCP_DATA_PROJECT` -> prefix for project related variables
- `GCP_PROJECT` -> project ID for GCP project
- `GCP_REGION` -> this should be obvious, I use `us-west1`

### Secrets 

- `GOOGLE_CREDENTIALS` -> json object for GCP service principal

## GitHub Actions

Configured to use `.github/workflows/terraform.tf`
