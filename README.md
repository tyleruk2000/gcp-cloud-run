# Share Modules in the Private Registry

The companion repository for GCP Cloud Run

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloud_run_service.frontend_service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service) | resource |
| [google_cloud_run_service_iam_policy.noauth](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service_iam_policy) | resource |
| [google_iam_policy.noauth](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_docker_tag"></a> [docker\_tag](#input\_docker\_tag) | n/a | `any` | n/a | yes |
| <a name="input_envrioment"></a> [envrioment](#input\_envrioment) | n/a | `any` | n/a | yes |
| <a name="input_min_scale"></a> [min\_scale](#input\_min\_scale) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_frontend_url"></a> [frontend\_url](#output\_frontend\_url) | n/a |