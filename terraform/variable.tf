variable "resource_group" {
    type = object({
    name = string
    location = string
    })
}

variable "kubernetes_cluster" {
    type = object({
    name = string
    })
}