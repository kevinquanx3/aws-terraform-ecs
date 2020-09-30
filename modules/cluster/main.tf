locals {
  tags = {
    Environment     = "${var.environment}"
    ServiceProvider = "Sage"
  }
}

resource "aws_ecs_cluster" "ecs-cluster" {
  name = "${var.cluster_name}"

  tags = "${merge(
    local.tags,
    var.tags
  )}"
}