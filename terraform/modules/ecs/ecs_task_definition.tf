variable "aws_iam_role" {}

resource "aws_ecs_task_definition" "newworld-definition" {
  family                   = "${var.app_name}-definition"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 256
  memory                   = 512
  execution_role_arn       = var.aws_iam_role
  network_mode             = "awsvpc"
  container_definitions    = file("modules/ecs/container_definitions.json")
  runtime_platform {
    operating_system_family = "LINUX"
    cpu_architecture        = "X86_64"
  }
}
