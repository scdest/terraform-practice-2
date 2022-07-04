resource "aws_network_interface" "ni" {
  subnet_id   = var.subnet_id
  private_ips = var.addresses

  tags = {
    Name = var.aws_ni_name
  }
}

resource "aws_instance" "instance" {
  ami           = var.instance_ami_id
  instance_type = var.instance_type
  availability_zone = var.availability_zone

  network_interface {
    network_interface_id = aws_network_interface.ni.id
    device_index         = 0
  }

  user_data = var.script_data

  tags = {
    Name = var.instance_name
  }
}

resource "aws_ebs_volume" "vol" {
  availability_zone = var.availability_zone
  size              = var.volume_size
  type              = var.ebs_type
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.vol.id
  instance_id = aws_instance.instance.id
}
