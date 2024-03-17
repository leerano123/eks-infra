variable "environment" {
  description = "Denotes the environment you want to deploy to (either dev or prod)"
  type        = string
}

# variable "WG_PUBLIC_KEY" {
#   description = "Wireguard Public Key passed in from Bitbucket Secured Variable"
#   type        = string
# }

# variable "WG_PRIVATE_KEY" {
#   description = "Wireguard Private Key passed in from Bitbucket Secured Variable"
#   type        = string
# }

variable "KEYCLOAK_USER_PASSWORD" {
  description = "Keycloak password passed in from Bitbucket Secured Variable"
  type        = string
}
