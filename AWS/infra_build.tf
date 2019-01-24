provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "demoserver" {
  ami = "ami-3ecc8f46"
  instance_type = "t2.micro"
  tags {
        Name = "demoserver"
  }
  
  subnet_id = "subnet-0285c62feaff0e60f"
  security_groups = ["sg-0996bac765e6d44e4"]
  associate_public_ip_address = true
  key_name = "white"
  provisioner "local-exec" {
   command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u centos --private-key ~/Downloads/white.pem -i ${aws_instance.demoserver.public_ip}, deploy_jenkins.yml "
  }
}
