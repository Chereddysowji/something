resource "aws_s3_bucket" "name" {
    bucket = "lkjhlkjhlkjhvcvjvuyhcj2"
  
}
resource "aws_s3_bucket_versioning" "name" {
    bucket = aws_s3_bucket.name.id
    versioning_configuration {
      status = "Enabled"   
       }
}

       #DynamoDB creation for locking process
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamoq2"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}
resource "aws_instance" "name" {
  ami = "ami-013e83f579886baeb"
 instance_type = "t2.micro"
 key_name = "my_key_keypair"
 tags = {
   Name = "gy"
 }
}

  
