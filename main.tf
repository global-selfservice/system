module "eks" {
  source = "github.com/global-devops-terraform/k8s-system?ref=v0.34.2"

  cluster_name    = local.cluster_name
  zone_name       = local.domain_name
  ingress_lb_sg   = local.cluster_sg
  zone_id_filters = [local.zone_id]
  vpc_id          = local.vpc_id
  zone_id         = local.zone_id
  logging_bucket  = local.logging_bucket
  provider_url    = local.cluster_oidc_issuer_url
  subnets         = local.persistence_subnets
}
