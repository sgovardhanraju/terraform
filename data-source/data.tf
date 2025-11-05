data "aws_ami" "joindevops" {
    owners = ["973714476881"]
    most_recent = true

    filter {
      name = "name"
      values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
      name ="root-device-type"
      values = ["ebs"]
    }
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data "aws_instance" "mongodb" {
    instance_id = "i-0ccd8bd5f09e1d90d"
}

output "mongodb_info" {
    value = data.aws_instance.mongodb
}

output "mongodb_publicip" {
    value = data.aws_instance.mongodb.public_ip
}

output "mongodb_privateip" {
    value = data.aws_instance.mongodb.private_ip
}