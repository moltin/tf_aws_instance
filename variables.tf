# Ubuntu boxes - Used to connect with docker cloud
variable "machine_ami" {
    default = {
        rancheros-eu-west-1 = "ami-90790be3" # 0.6.0
        rancheros-us-west-1 = "ami-1affb27a"
        rancheros-us-east-1 = "ami-827b1395"
        ubuntu-eu-west-1 = "ami-26c2a355" # 15.10
        ubuntu-us-west-1 = "ami-5df6b03d"
        ubuntu-us-east-1 = "ami-055fd212"
    }
}

variable "ami_os" {
    default = "rancheros-eu-west-1"
    description = "OS for the AMI lookup"
}

variable "namespace" {
    description = "Namespace variable used to namespace shit"
}

variable "remote_exec_command" {
    default = ""
    description = "A command that gets executed on the remote machine"
}

variable "key_name" {
    description = "SSH key name in your AWS account for AWS instances"
}

variable "key_path" {
    description = "Path to the private key specified by key_name"
}

variable "key_user" {
    default = "ubuntu"
    description = "SSH user"
}

variable "key_port" {
    default = "22"
    description = "SSH port"
}

variable "region" {
    default = "eu-west-1"
    description = "The region of AWS, for AMI lookups"
}

variable "server_count" {
    default = "1"
    description = "The number of Consul servers to launch"
}

variable "instance_type" {
    default = "t1.micro"
    decription = "The instance type of server to launch"
}

variable "version" {
    default = "v2"
    description = "Specific system version"
}

variable "vpc_id" {
    description = "VPC id"
}

variable "subnet_id" {
    description = "Subnet id"
}

variable "security_groups" {
    description = "A list of security groups"
}
