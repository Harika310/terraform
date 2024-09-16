variable "instance_type" {
    type = map
    default = {
        mysql = "t2.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }


}


variable "zone_id" {
    default = "Z09622173O6F2OX8NP6KO"
}

variable "domain_name" {
    default = "daws-81s.online"
}    