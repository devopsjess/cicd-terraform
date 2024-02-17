
#new sns topic
resource "aws_sns_topic" "user_updates" {
  name = local.topic-name
}



locals {
  topic-name = "update-topic" 
}