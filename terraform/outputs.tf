output "cluster_name" {
  value = module.eks.cluster_name
}
output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}
output "vpc_id" {
  value = module.vpc.default_vpc_id
}