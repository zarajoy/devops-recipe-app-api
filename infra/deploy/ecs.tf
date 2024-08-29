#####################################################
# ECS cluster for running the recipe app on fargate #
######################################################

resource "aws_ecs_cluster" "main" {
  name = "${local.prefix}-cluster"
}
