terraform {
  required_version = "= 1.0.4"
}

provider "aws" {
  profile = "dataminded_academy"
  region  = "eu-west-1"
}

resource "aws_instance" "academy_git_lab" {
  ami           = "ami-02b4e72b17337d6c1"
  instance_type = "t2.2xlarge"
  associate_public_ip_address = true
  key_name = "AcademyGitSSHKey"
  security_groups = [ "AcademyLabVM" ]
  tags = {
    "Name" = "academy_git_lab"
  }
}

output "PublicDNS" {
  description = "Lab VM public DNS for SSH/Browser access"
  value       = aws_instance.academy_git_lab.public_dns
}

resource "aws_key_pair" "ssh-key" {
  key_name   = "AcademyGitSSHKey"
  public_key = var.laptop-ssh-public-key
}