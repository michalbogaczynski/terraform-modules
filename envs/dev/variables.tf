variable "location" {
    type    = string
    default = "polandcentral"
}

variable "name" {
    type    = string
    default = "devops"
}


variable "address_space" {
    type    = list(string)
    default = ["10.0.0.0/16"]
}