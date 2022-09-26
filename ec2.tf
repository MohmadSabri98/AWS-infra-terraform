resource "aws_instance" "bastionAPP" {
  ami                         = var.my-ami-id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.allow_ssh_from_public.id]
  subnet_id                   = module.network.public1_id # aws_subnet.public_subnet_1.id
  associate_public_ip_address = true
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > public_EC2bastionIP.txt"
  }
}

# resource "tls_private_key" "mykey" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "generated_key" {
#   key_name   = "testkey"
#   public_key = tls_private_key.mykey.public_key_openssh
# }



resource "aws_instance" "nodeapp" {
  ami                    = var.my-ami-id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh_3000.id]
  subnet_id              = module.network.private1_id
  # key_name = aws_key_pair.generated_key.key_name

}