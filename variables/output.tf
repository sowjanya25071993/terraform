#output "instance_info" {
    #value = aws_instance.web
#}
output "instance_id" {
    value = aws_instance.web.id
}
output "public-ip" {
    value = aws_instance.web.public_ip
}
output "private-ip" {
    value = aws_instance.web.private_ip
}