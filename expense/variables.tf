variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}


variable "instance_names" {
    type = list(string)
    default = ["mysql","backend","frontend"]
}

variable "zone_id" {
    default = "Z09622173O6F2OX8NP6KO"
}

variable "domain_name" {
    default = "daws-81s.online"
}