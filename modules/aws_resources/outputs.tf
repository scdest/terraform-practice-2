output "instance_id" {
  value = aws_instance.instance.id
}

output "ni_id" {
  value = aws_network_interface.ni.id
}

output "volume_id" {
  value = aws_ebs_volume.vol.id
}