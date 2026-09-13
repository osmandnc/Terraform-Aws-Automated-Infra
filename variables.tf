variable "aws_region"{
	description = "AWS bolgesi"
	type= string
	default ="eu-central-1"

}

variable "instance_type"{
	type = string
	default = "t3.micro"
}

variable "server_name"{
	type=string
	default = "docker-web-server"
}

variable "server_port" {
	type = number
	default =80
}
