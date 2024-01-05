variable "ami_id" {
    default = "ami-03265a0778a880afb"
}
variable "zone_id" {
    default = "Z0380517BLU5489E8PQ"
}
variable "domain_name" {
    default = "sowjanyaaws.xyz"
}
variable "instance_names" {
    type = map
    default = {
        mongodb = "t3.small"
        mysql = "t3.small"
        shipping = "t3.small"
        cart = "t2.micro"
        user = "t2.micro"
        rabbitmq = "t2.micro"
        catalogue = "t2.micro"
        dispatch = "t2.micro"
        redis = "t2.micro"
        payment = "t2.micro"
        web = "t2.micro"
        
    }
}