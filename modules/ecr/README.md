# aws-terraform-ecs/modules/ecr

This submodule creates an ecr repo.

## Basic Usage

```
module "ecr_repo" {
 source              = "git@github.com:rackspace-infrastructure-automation/aws-terraform-ecs/modules/ecr?ref=v0.0.2"
 provision_ecr       = true
 ecr_repository_name = "myrepo-${random_string.ecs_rstring.result}"
}
```

Full working references are available at [examples](examples)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ecr\_lifecycle\_policy\_text | The JSON repository policy text to apply to the repository. The length must be between 100 and 10,240 characters. | string | `""` | no |
| ecr\_repository\_name | A name for the image repository | string | `""` | no |
| ecr\_repository\_policy\_text | A JSON policy that controls who has access to the repository and which actions they can perform on it. | string | `""` | no |
| provision\_ecr | Provision ECR resource? true or false | string | `"false"` | no |

## Outputs

| Name | Description |
|------|-------------|
| ecr\_repository\_name | Name of the ECR repository |
| ecr\_repository\_registry\_id | Name of the ECR repository |
| ecr\_repository\_registry\_url | URL of the ECR repository |

