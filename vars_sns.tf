# Variables with Login details
variable "accesskey" {
  default = "AKIAWOYS2DPETHX7V4VL"
}

variable "secretkey" {
  default = "1JV2FbZyI9W2wf6cV0oo5RnrHwp7ZzzFenFp49dS"
}

variable "aws_session_token" {
  default = ""
}

# Variables for region
variable "awsregion" {
  default = "ap-south-1"
}

variable "vil-ops-notification-prod" {
  default = {
    name = "vil-ops-notification-prod"   
    }
}