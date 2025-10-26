# terraform_state_lock

Terraform: demonstration of remote backend state locking 

## 00-remote-state-backend
-  Provisions S3 Bucket and DynamoDB Table to be used in order to create a remote backend and lock state

## 01-example-with-lock-table
- Provisions a VPC to test the remote backend state locking with a lock table

## 02-example-with-lock-file
- Provisions a VPC to test the remote backend state locking with a lock file

## 03-networking-stack
- Provisions a more complex VPC with several other resources to test the remote backend state locking with a lock file