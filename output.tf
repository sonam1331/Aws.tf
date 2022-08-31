# output "instance_id" {
#   description = "ID of EC2 instance"
#   value       = aws_instance.Naira1.id
# }

# output "mys3bucket"{
#   description = "Name of s3 instance"
#   value = aws_s3_bucket.Naira-my-bucket.bucket_domain_name
#   }
output "instance_Id" {
  description = "Output for count"
  value = aws_instance.Naira3
}