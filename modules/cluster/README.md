# aws-terraform-ecs/modules/cluster

This submodule creates an ecs cluster

## Basic Usage

```
module "ecs" {
 source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-ecs//modules/cluster/?ref=v0.0.3"

 cluster_name = "MyCluster"

 tags = {
   Terraform = "true"
 }
}
```

Full working references are available at [examples](examples)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name | A name for the ECS cluster, up to 255 letters, numbers, hyphens, and underscores. | string | n/a | yes |
| environment | Application environment for which this cluster is being created. Preferred values are Development, Integration, PreProduction, Production, QA, Staging, or Test | string | `"Development"` | no |
| tags | Custom tags to apply to all resources. | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_arn | The ARN of the cluster |
| cluster\_id | The ID of the cluster |
| cluster\_join\_command\_linux | The command to join the cluster, to run on a Linux EC2 Instance. |
| cluster\_join\_command\_windows | The command to join the cluster, to run on a Windows EC2 Instance. |

