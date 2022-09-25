output "vpc_id" {
  value = aws_vpc.lab1.id

}

output "subnet_Pub1_id" {
  value = aws_subnet.public1.id
}

output "subnet_Pub2_id" {
  value = aws_subnet.Public2.id
}

output "subnet_Prv1_id" {
  value = aws_subnet.private1.id
}

output "subnet_Prv2_id" {
  value = aws_subnet.private2.id
}

output "aws_security_group_pub_id" {
  value = aws_security_group.public_sec_group.id

}
output "aws_security_group_prv_id" {
  value = aws_security_group.private_sec_group.id

}
