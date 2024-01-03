variable "sg_name" {
  type        = string
  default     = "roboshop-all-aws"
}
variable "sg_description" {
    type        = string
  default     = "allow tcs inbound traffic"
}
variable "inbound_from_port" {
    default     = 0
}
variable "cidr_blocks" {
    type        = list
  default     = ["0.0.0.0/0"]
}

