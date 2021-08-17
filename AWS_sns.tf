# default configuration
provider "aws" {
  access_key = "${var.accesskey}"
  secret_key = "${var.secretkey}"
#  token = "${var.aws_session_token}"
  region = "${var.awsregion}"
}

resource "aws_sns_topic" "vilsnstopic" {
  name = "${var.vil-ops-notification-prod.name}"
  display_name = "${var.vil-ops-notification-prod.name}"

tags = {
    Name        = "${var.vil-ops-notification-prod.name}"
    Environment = "prod"
}
}
resource "aws_sns_topic_subscription" "vil-ops-notification_prod_1" {
  topic_arn = aws_sns_topic.vilsnstopic.arn
  protocol  = "email"
  endpoint  = "sethuchean@gmail.com"
}
resource "aws_sns_topic_subscription" "vil-ops-notification_prod_2" {
  topic_arn = aws_sns_topic.vilsnstopic.arn
  protocol  = "email"
  endpoint  = "sethuraman.B@gmail.com"
}




