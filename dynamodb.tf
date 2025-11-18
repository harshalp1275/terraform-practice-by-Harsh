resource "aws_dynamodb_table" "terra_lock_table" {
  name           = "state_lockfile_table"
  billing_mode   = "PAY_PER_REQUEST"
  #read_capacity  = 1
  #write_capacity = 1
  hash_key       = "LockID"



  attribute {
    name = "LockID"
    type = "S"
  }

 
  tags = {
    Name        = "state_lockfile_table"

  }
}
