#Create ASG

resource "aws_autoscaling_group" "ec2-asg" {
  name                      = "Launch-Temp-ASG"
  max_size                  = 2
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "EC2"
  desired_capacity          = 2
  vpc_zone_identifier       = [aws_subnet.application-subnet-1.id, aws_subnet.application-subnet-2.id]

launch_template{
  id = aws_launch_template.web-server-ec2.id
  version  = "$Latest"
}
  
lifecycle {
    ignore_changes = [load_balancers, target_group_arns]
  }
}

# Create a new ALB Target Group attachment
resource "aws_autoscaling_attachment" "tg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.ec2-asg.id
  alb_target_group_arn   = aws_lb_target_group.alb-target-group.arn 
  }
