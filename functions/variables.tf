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