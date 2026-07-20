data "aws_subnets" "eks_subnets" {
  filter {
    name   = "tag:kubernetes.io/cluster/${var.cluster_name}"
    values = ["shared"]
  }
}

data "aws_iam_role" "eks_control_plane_role" {
  name = "eks-control-plane-role"
}

data "aws_iam_role" "eks_node_group_role" {
  name = "eks-node-group-role"
}