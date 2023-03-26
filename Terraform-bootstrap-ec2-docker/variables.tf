variable "region" {
  type        = string
  description = "default region"
  default     = "us-east-1"
}

variable "vpc-cidr" {
  type        = string
  description = "vpc cidr range"
  default     = "10.0.0.0/16"
}

variable "vpc-tag" {
  type        = string
  description = "vpc tag"
  default     = "testing-vpc"
}

variable "instance" {
  type        = string
  description = "instance"
  default     = "t2.micro"
}

variable "anywhere" {
  type        = string
  description = "anywhere-cidr-0.0.0.0/0"
  default     = "0.0.0.0/0"
}

variable "publicsubnet" {
  type        = string
  description = "public-subnet"
  default     = "10.0.0.0/24"
}

variable "privatesubnet" {
  type        = string
  description = "private-subnet"
  default     = "10.0.1.0/24"
}

variable "ssh" {
  type        = string
  description = "port-22-ssh"
  default     = "22"
}