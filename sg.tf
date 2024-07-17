resource "aws_security_group" "all_worker_mgmt" {
  name        = "all_worker_management"
  description = "Security Group for All Worker Nodes"
  vpc_id      = module.vpc.vpc_id

  tags = {
    Name = "all_worker_management"
  }
}

resource "aws_security_group_rule" "all_worker_mgmt_ingress" {
  security_group_id = aws_security_group.all_worker_mgmt.id
  description       = "allow inbound traffic from eks"
  from_port         = 0
  protocol          = "-1"
  to_port           = 0
  type              = "ingress"
  cidr_blocks = [
    "10.0.0.0/8",
    "172.16.0.0/12",
    "192.168.0.0/16",
  ]
}

resource "aws_security_group_rule" "all_worker_mgmt_egress" {
  security_group_id = aws_security_group.all_worker_mgmt.id
  description       = "allow outbound traffic to anywhere"
  from_port         = 0
  to_port           = 0
  protocol          = "-1" # semantically equivalent to all ports
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}
