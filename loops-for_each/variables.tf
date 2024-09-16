variable "instance_type" {
    type = map
    default = {
        mysql = "t2.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }


}
     