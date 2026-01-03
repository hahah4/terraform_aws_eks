resource "kubernetes_service_account_v1" "aws-load-balancer-controller-service-account" {
  metadata {
    name      = "aws-load-balancer-controller"
    namespace = "kube-system"
    labels = {
      "app.kubernetes.io/component" : "controller",
      "app.kubernetes.io/name" : "aws-load-balancer-controller"
    }
    annotations = { "eks.amazonaws.com/role-arn" : aws_iam_role.AmazonEKSLoadBalancerControllerRole.arn }
  }
}
