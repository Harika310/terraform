resource "aws_instance" "expense" {

   ami = "ami-09c813fb71547fc4f" 
   count = length(var.instance_names)
   instance_type = "t2.micro"
   vpc_security_group_ids = [aws_security_group.allow_ssh1.id] 
  #    tags = {
  #     Name = var.instance_names[count.index]
   #   }
    tags = merge(
        var.common_tags, 
        {
           Name = var.instance_names[count.index]
        }
    )
}