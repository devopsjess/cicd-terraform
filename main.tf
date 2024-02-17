#add this
locals {
  topic-name = "update-topic" 
}



#new sns topic
resource "aws_sns_topic" "user_updates" {
  name = var.abc
}



