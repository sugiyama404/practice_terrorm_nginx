resource "aws_ecs_task_definition" "newworld-definition" {
  family                   = "${var.app_name}-definition"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 256
  memory                   = 512
  execution_role_arn       = var.aws_iam_role
  network_mode             = "awsvpc"
  container_definitions = jsonencode([
    {
      name      = "newworld"
      image     = "280233053143.dkr.ecr.ap-northeast-1.amazonaws.com/newworld:latest"
      cpu       = 10
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
  runtime_platform {
    operating_system_family = "LINUX"
    cpu_architecture        = "X86_64"
  }
}
