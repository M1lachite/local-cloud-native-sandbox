resource "aws_eks_cluster" "floci_cluster" {
  name = var.cluster_name

  role_arn = data.aws_iam_role.eks_control_plane_role.arn
  version  = "1.35"

  vpc_config {
    subnet_ids = data.aws_subnets.eks_subnets.ids
  }
}

resource "aws_eks_node_group" "floci_node_group" {
  cluster_name = aws_eks_cluster.floci_cluster.name

  node_group_name = "${var.cluster_name}-node-group"

  node_role_arn = data.aws_iam_role.eks_node_group_role.arn

  subnet_ids = data.aws_subnets.eks_subnets.ids

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}