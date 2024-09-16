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
  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
         from_port        = ingress.value["from_port"]
         to_port          = ingress.value["to_port"]
         protocol         = ingress.value["protocol"]
         cidr_blocks      = ingress.value["cidr_blocks"]
   
    }
   
  } 

 tags = {
    Name = "allow_ssh1"
  }
} 

resource "aws_instance" "expense" {

   ami = "ami-09c813fb71547fc4f" 
   instance_type = "t2.micro"
   vpc_security_group_ids = [aws_security_group.allow_ssh1.id] 
   tags = {
    
    Name = "expense"
  }

}