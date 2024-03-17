# # WireGuard VPN Server
# module "wireguard_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "5.6.0"

#   name                        = "wireguard-server"
#   iam_instance_profile        = aws_iam_instance_profile.wireguard_profile.name
#   associate_public_ip_address = true
#   create_spot_instance        = true
#   spot_wait_for_fulfillment   = true
#   spot_price                  = "0.05"
#   spot_type                   = "persistent"
#   ami                         = local.wireguard_ami
#   instance_type               = local.wireguard_instance
#   subnet_id                   = local.dev_public_subnet1
#   key_name                    = local.wireguard_kp
#   vpc_security_group_ids      = [aws_security_group.wireguard_sg.id]
#   user_data = templatefile("bootstrap.sh.tpl", {
#     wg_private_key = var.WG_PRIVATE_KEY
#     wg_public_key  = var.WG_PUBLIC_KEY
#     eip_id         = local.wireguard_eip
#   })

#   tags = {
#     Name = "wireguard-server"
#   }
# }

# resource "aws_security_group" "wireguard_sg" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = local.dev_vpc_id

#   ingress {
#     from_port   = 51820
#     to_port     = 51820
#     protocol    = "udp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# resource "aws_ebs_volume" "wireguard_ebs_volume" {
#   availability_zone = "us-east-1a"
#   size              = 8
#   tags = {
#     Name = "Wireguard Volume"
#   }
# }

# resource "aws_volume_attachment" "wireguard_ebs_att" {
#   device_name = "/dev/sdh"
#   volume_id   = aws_ebs_volume.wireguard_ebs_volume.id
#   instance_id = module.wireguard_instance.spot_instance_id
#   depends_on  = [module.wireguard_instance]
# }
