resource "aws_db_subnet_group" "db_subnet_group" {

  name       = "terraform-rds-subnets"
  subnet_ids = ["${module.Task_Network.subnet_Prv1_id}", "${module.Task_Network.subnet_Prv2_id}"]
}

resource "aws_db_instance" "db_instance" {

  identifier           = "mysqldb"
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  username             = "admin"
  password             = var.db_instance_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  availability_zone    = "${var.region}a"
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.id
}
