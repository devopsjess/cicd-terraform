# add this
locals {
  topic-name = "updates-topic-dev"
}

#new sns topic
resource "aws_sns_topic" "sns_topic" {
  # change this
  name = "${local.topic-name}-${var.env}"
  # name = "wutyee-updates-topic-dev" or name = "wutyee-updates-topic-prod"
}