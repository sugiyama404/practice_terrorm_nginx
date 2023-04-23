resource "aws_ecs_service" "newworld-service" {
  name            = "nginx-service"
  cluster         = aws_ecs_cluster.newworld-cluster.id
  task_definition = aws_ecs_task_definition.newworld-definition.arn
  desired_count   = 1

  network_configuration {
    security_groups  = [var.vpc_id]
    subnets          = ["${var.subnet_id}"]
    assign_public_ip = true
  }

  lifecycle {
    ignore_changes = [desired_count]
  }
}
