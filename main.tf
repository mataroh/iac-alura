terraform { 
  required_providers { 
    #Provedor que será usado
    aws = { 
      source   = "hashicorp/aws" 
      version = "~> 5.92" 
    } 
  } 

  required_version = ">= 1.2" 
}

#Região que a instância será criada
provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

#Configurações como nome
resource "aws_instance" "app_server" {
  ami           = "ami-0d1b5a8c13042c939"
  instance_type = "t2.micro"
  key_name = "iac-alura"

  tags = {
    Name = "Primeira Instância"
  }
}
