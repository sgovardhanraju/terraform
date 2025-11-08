resource "aws_instance" "terraform" {
  ami = var.ami_id
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_all" {
    name = var.sg_name

    egress {
        from_port = var.egress_from_port
        to_port = var.egress_to_port
        protocol = var.egress_protocol
        cidr_blocks = var.cidr
    }

    ingress {
        from_port = var.ingress_from_port
        to_port = var.ingress_to_port
        protocol = var.ingress_protocl
        cidr_blocks = var.cidr
    }

    tags = {
      Name = "allow-all"
    }
  
}