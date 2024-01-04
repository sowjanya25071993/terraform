
resource "aws_instance" "web" {
    #count = 11
    count = length(var.instance_names)
  ami           = var.ami_id
  instance_type = local.instance_type
  
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "www" {
  #count = 11
  count = length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [local.ip]
}