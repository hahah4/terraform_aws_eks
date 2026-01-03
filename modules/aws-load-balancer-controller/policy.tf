resource "aws_iam_policy" "AWSLoadBalancerControllerIAMPolicy" {
  name = "AWSLoadBalancerControllerIAMPolicy"

  policy = file("${path.module}/iam_policy.json")


  tags = merge(
    var.tags,
    {
      Name = "eks-controller-policy"
  })
}
