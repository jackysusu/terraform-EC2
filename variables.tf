variable "instance_count" {
  default = "1"
}

variable "instance_tags" {
  type = list
  default = ["jenkins", "Jacky-2"]
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-0321dd2a91bbee0d0"
}

variable "availability_zone" {
  description = "AZ to start the instance in"
  type        = string
  default     = "ap-northeast-1"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = "keytest"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = "subnet-0ed4dc69f89e90368"
}

variable "public_key_path" {
  description = "the path of public key"
  type        = string
  default     = "/home/jacky/.ssh/jacky1_rsa.pub"
}

variable "private_key_path" {
  description = "the path of public key"
  type        = string
  default     = "/home/jacky/.ssh/jacky1_rsa"
}