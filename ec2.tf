resource "aws_instance" "bastion" {
  ami                         = var.aws_ami_amzaon_linux
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  subnet_id                   = module.Task_Network.subnet_Pub1_id
  security_groups             = [module.Task_Network.aws_security_group_pub_id]
  provisioner "local-exec" {
    command = "echo instance public ip is : ${self.public_ip} >> provisioner.txt"

  }


  tags = {
    Name = "bastion"
  }
}

resource "aws_instance" "application" {
  ami             = var.aws_ami_amzaon_linux
  instance_type   = "t2.micro"
  subnet_id       = module.Task_Network.subnet_Prv1_id
  security_groups = [module.Task_Network.aws_security_group_prv_id]




  tags = {
    Name = "application"
  }
}
