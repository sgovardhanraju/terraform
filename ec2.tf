resource "aws_instance" "terraform" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
    Terraform = "true"
  }
}

resource "aws_security_group" "allow_all" {
    name = "allow_all"

    egress {
        from_port = 0 # from port 0 to port 0 mean all ports
        to_port = 0
        protocol = "-1" # -1 means all protocols
        cidr_blocks = ["0.0.0.0/0"] # internet
    }

    ingress {
        from_port = 0 # from port 0 to port 0 mean all ports
        to_port = 0
        protocol = "-1" # -1 means all protocols
        cidr_blocks = ["0.0.0.0/0"] # internet
    }

    tags = {
      Name = "allow_all"
    }
  
}