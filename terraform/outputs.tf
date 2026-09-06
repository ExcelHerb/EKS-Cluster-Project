output "cluster_name" {
  value = module.eks.cluster_name
}
output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "load_balancer_controller_role_arn" {
  value = module.lb_controller.arn
}
output "github_actions_role_arn" {
  description = "IAM role used by GitHub Actions"
  value       = aws_iam_role.github_actions.arn
}
