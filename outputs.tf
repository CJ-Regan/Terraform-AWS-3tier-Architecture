output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.rds.endpoint
}

output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = "${aws_lb.web-alb.dns_name}"
}
