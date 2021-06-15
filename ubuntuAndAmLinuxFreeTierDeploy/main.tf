resource "aws_instance" "ubuntu_server1" {
  ami             = "ami-0194c3e07668a7e36"
  instance_type   = "t2.micro"
  security_groups = ["launch-wizard-1"]
  key_name        = "myAWSKeyPair"

  tags = {
    Name = "ubuntuServer"
  }

}

output "public_dns_ubuntu" {
  description = "List of public DNS names assigned to instances"
  value       = aws_instance.ubuntu_server1.*.public_dns

}

output "public_ip_ubuntu" {
  description = "List of Public IPs assigned to the instances"
  value       = aws_instance.ubuntu_server1.*.public_ip
}

resource "aws_instance" "amazonLinux_server1" {
  ami             = "ami-06dc09bb8854cbde3"
  instance_type   = "t2.micro"
  security_groups = ["launch-wizard-1"]
  key_name        = "myAWSKeyPair"

  tags = {
    Name = "amazonLinuxServer"
  }

}

output "public_dns_amazonLinux" {
  description = "List of public DNS names assigned to instances"
  value       = aws_instance.amazonLinux_server1.*.public_dns

}

output "public_ip_amazonLinux" {
  description = "List of Public IPs assigned to the instances"
  value       = aws_instance.amazonLinux_server1.*.public_ip
}