# terraform-gcp-template

Terraform project to deploy a VM with DNS to GCP.  Built as concept to learn a few new things.

## Environment setup

If you use GitHub Actions, you can pass these through as environment variables (see `.github/workflows/terraform.yml`).  Otherwise you can use .tfvars.

### `.tfvars` or envioronment variables

```
region="us-west1" 
project="you-project-name"
data-project="example-project"
domain="example.com"
```

### Secrets 

Populate this in your GitHub repo for GitHub Actions.  If using locally, `gcloud auth login` should generate the requisite local credential file for Terraform.

- `GOOGLE_CREDENTIALS` -> json object for GCP service principal

## GitHub Actions

Configured to use `.github/workflows/terraform.tf`
