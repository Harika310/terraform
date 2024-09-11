variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "this is AMI id of devops-practice with RHEL-9"

}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
   default = {
        Name = "backend"
        project = "expense"
        component = "backend"
        environment = "DEV"
        terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_ssh1"
}

variable "sg_description" {
    default = "allow port no 22 for ssh1 conncetion"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

