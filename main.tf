provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "frontend" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_name

  tags = {
    Name = "ReactAppInstance"
  }

  provisioner "remote-exec" {
    inline = [
      "docker run -d -p 80:80 ${var.dockerhub_username}/nobel-prize-frontend:latest"
    ]
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = var.key_name

  tags = {
    Name = "NodeAppInstance"
  }

  provisioner "remote-exec" {
    inline = [
      "docker run -d -p 3000:3000 ${var.dockerhub_username}/nobel-prize-backend:latest"
    ]
  }
}
