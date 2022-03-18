resource "aws_flow_log" "flow-log-test" {
  log_destination      = aws_s3_bucket.vpcflowlogcj.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.prod-vpc.id
}

resource "aws_s3_bucket" "vpcflowlogcj" {
  bucket = "vpcflowlogcj"
}