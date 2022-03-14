resource "aws_launch_template" "web-server-ec2" {
  name = "webServerEc2"

    block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      volume_size = 8
    }
  }

  instance_type = var.instance_type
  image_id      = var.image_id
  user_data     = filebase64("data.sh")

    network_interfaces {
    associate_public_ip_address = false
    security_groups             = [aws_security_group.ec2-sg.id]
  }
}
