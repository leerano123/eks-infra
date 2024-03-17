# # Wireguard
# resource "aws_iam_role" "wireguard_role" {
#   name = "wireguard_role"

#   assume_role_policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Principal": {
#         "Service": "ec2.amazonaws.com"
#       },
#       "Effect": "Allow",
#       "Sid": ""
#     }
#   ]
# }
# EOF
# }

# resource "aws_iam_role_policy" "wireguard_policy" {
#   name = "wireguard_policy"
#   role = aws_iam_role.wireguard_role.id

#   policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Action": [
#         "ec2:AssociateAddress"
#       ],
#       "Resource": "*"
#     }
#   ]
# }
# EOF
# }


# resource "aws_iam_instance_profile" "wireguard_profile" {
#   name = "wireguard_profile"
#   role = aws_iam_role.wireguard_role.name
# }

