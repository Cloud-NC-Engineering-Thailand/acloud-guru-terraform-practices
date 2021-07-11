output "topic-us-east_id" {
    description = "Topic US East ID"
    value = aws_sns_topic.topic-us-east.arn
}

output "topic-topic-us-west_id" {
     description = "Topic US West ID"
    value = aws_sns_topic.topic-us-west.arn
}