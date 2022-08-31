# resource "aws_instance" "Naira1"{
#   ami = "ami-0c95d38b24a19de18"
#   instance_type = var.ins_type
#   tags = {
#      Name = "Naira"
#      owner = "sonam"
#   }
# }
# # resource "aws_instance" "Naira2"{
#   ami = "ami-0c95d38b24a19de18"
#     instance_type = "t2.micro"
#     tags = {
#       Name = "yuvi"
#     }
# }
# resource "aws_s3_bucket" "Naira-my-bucket" {
#   bucket = "yuvi-1-s3-bucket"

#   tags = {
#     Name        = "My collection"
#     Environment = "sonam"
#   }
# }

# resource "aws_s3_bucket_acl" "example" {
#   bucket = aws_s3_bucket.Naira-my-bucket.id
#   acl    = "private"
# }
resource "aws_instance" "Naira3"{
  count= length(var.tag_name)
  ami="ami-0c95d38b24a19de18"
  instance_type=var.ins_type


  tags = {
    Name = var.tag_name[count.index]
    owner = "sonam.bansal@cloudeq.com"
    purpose = "practice"
  }
}
# resource "aws_instance" "Naira4"{
#    for_each = var.tag_name2
#    ami = "ami-0c95d38b24a19de18"
#     instance_type = "t2.micro"

#   tags = {
#     Name = each.value
#     Owner = "sonam.bansal@cloudeq.com"
#     purpose = "practice"
#   }
# }
