
variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "ap-southeast-2"
}

# Example of a list variable
variable "availability_zones" {
  default = ["ap-southeast-2a", "ap-southeast-2b"]
}

variable "cidr_block" {
  default = "10.1.0.0/16"
}

variable "env" {
  description = "Targeted Deployment environment"
  default     = "Development"
}

variable "python_project_repository_branch" {
  description = "Python Project Repository branch to connect to"
  default     = "master"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "tmtwebsitehost-cicd-artifacts-bucket-23"
  # default     = "tmtwebsitehost-tf-state-bucket-jcs-23"
}

variable "container_port" {
  description = "python app container port"
  default     = 5002
}

variable "ACCOUNT_ID" {
  description = "aws account id number"
  default     = "516003265142"
}


variable "vpc_default_id" {
  #default = "vpc-d3dcdcab"
  # default = "vpc-5f353f27"
  default = "vpc-0dad16cdb04eb28da"
}

variable "container_name" {
  default = "python-app"
}

variable "ecs_image_ami" {
  type    = string
  default = "ami-030ae4670412c0423"
  # run the following command to get the image ami for your region
  # aws ssm get-parameters --names /aws/service/ecs/optimized-ami/amazon-linux-2/recommended
}
