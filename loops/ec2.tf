resource "aws_security_group" "allow_ssh1" {
  name        = "allow_ssh1"
  description = "Allow ssh1 inbound traffic and all outbound traffic"
  
 #outgoing traffic
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

 #incoming traffic
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  } 

 tags = {
    Name = "allow_ssh1"
  }
} 

resource "aws_instance" "terraform" {

   ami = "ami-09c813fb71547fc4f" 
   count = 3
   instance_type = "t2.micro"
   vpc_security_group_ids = [aws_security_group.allow_ssh1.id] 
   tags = {
    Name = "terraform"
  }

}