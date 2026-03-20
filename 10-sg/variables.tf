variable "project" {
  default = "roboshop"

}

variable "environment" {
  default = "dev"

}
variable "sg_names" {
  type = list 
  default = [
     # Databases
     "mongodb", "redis", "mysql", "rabbitmq",
     # Backend
     "catalogue", "user", "cart", "shipping", "payment",
     # Backend_ALB
     "backend_alb",
     # frontend
     "frontend",
     # frontend_alb
     "frontend_alb",
     # Bastion
     "bastion"

  ]
}