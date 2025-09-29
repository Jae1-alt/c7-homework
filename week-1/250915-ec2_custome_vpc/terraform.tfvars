
region   = "us-east-1"
vpc_name = "c7_2_brazil"
vpc_cidr = "10.190.0.0/16"
ingress_ipv4_ssh = "0.0.0.0/0"
ingress_ipv4_http = "0.0.0.0/0"

public_subnets = {
  "dev-subnet-a" = 0,
}
