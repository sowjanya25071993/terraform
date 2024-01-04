variable "instance_names" {
    type = list
    default = ["mongodb", "redis" , "mysql" , "rabbitmq" , "catalogue", "user", "shipping", "cart", "payment", "dispatch", "web"]

}
variable "ami_id" {
    default = "ami-03265a0778a880afb"
}
variable "zone_id" {
    default = "Z0380517BLU5489E8PQ"
}
variable "domain_name" {
    default = "sowjanyaaws.xyz"
}