# #!/bin/bash
# apt-get update -y
# apt-get install -y awscli wireguard wireguard-tools iptables
# sysctl -w net.ipv4.ip_forward=1
# echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
# cd /etc/wireguard
# echo ${wg_private_key} > wg-private.key
# echo ${wg_public_key} > wg-public.key
# chmod 600 wg-private.key
# chmod 644 wg-public.key
# WG_CONFIG_FILE=/etc/wireguard/wg0.conf
# echo "[Interface]" >> $WG_CONFIG_FILE
# WG_PRIVATE_KEY=$(cat /etc/wireguard/wg-private.key)
# echo "PrivateKey = $WG_PRIVATE_KEY" >> $WG_CONFIG_FILE
# echo "MTU = 1380" >> $WG_CONFIG_FILE
# DEFAULT_NIC=$(ip -o -4 route show to default | awk '{print $5}')
# SERVER_IP=$(ip -4 addr show $DEFAULT_NIC | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
# echo "Address = $SERVER_IP/20" >> $WG_CONFIG_FILE
# echo "PostUp = iptables -A FORWARD -i %i -j ACCEPT; iptables -t nat -A POSTROUTING -o $DEFAULT_NIC -j MASQUERADE" >> $WG_CONFIG_FILE
# echo "PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -t nat -D POSTROUTING -o $DEFAULT_NIC -j MASQUERADE" >> $WG_CONFIG_FILE
# echo "ListenPort = 51820" >> $WG_CONFIG_FILE
# echo "SaveConfig = True" >> $WG_CONFIG_FILE
# systemctl enable wg-quick@wg0
# systemctl start wg-quick@wg0
# # Authorize Paul's Wireguard public key
# wg set wg0 peer nLAFX8rTDjho24443fNaZqbx+nRZxinkhUVrj1gLbFY= allowed-ips 10.0.16.10
# # Authorize Farshad's Wireguard public key
# wg set wg0 peer "QbcMLSgDFiYQD8RU/LQZShJt5A6jQDtPuQBsPQEO6yQ=" allowed-ips 10.0.16.11
# # Authorize Charles's Wireguard public key
# wg set wg0 peer "FF+Tz29RdW//OOHOM2vavtFCuI0sywPnvOBUpPRWMwQ=" allowed-ips 10.0.16.12
# # Authoriize Hung's Wireguard public key (for helping with Okta integration)
# wg set wg0 peer "TVuYOTZL5+fbdeCiqzI7/USieyoBGQnQyLepPKBZoCY=" allowed-ips 10.0.16.13
# # Authorize Amit's Wireguard public key
# wg set wg0 peer "sczE4T1j5clOrPBcM8E5bHt6AvRvpm3fBZ4q7td8+Ss=" allowed-ips 10.0.16.14
# # Authorize Ibrahim's Wireguard public key
# wg set wg0 peer "0EUI2zp33Q50MCprZ9Fv8MixLx+m2gdPGLaCyvGYeHs=" allowed-ips 10.0.16.15
# # Authorize Kamesh's Wireguard public key
# wg set wg0 peer "Omfgj6mu0iPkFlFwCk7OYy8i75X1zRS09gqO7q78BU8=" allowed-ips 10.0.16.16
# # Authorize AJ's Wireguard public key
# wg set wg0 peer "5RkUvwCj6a9iK36nqkQr9ImqCW9oka0E8PWTLe3Qhhc=" allowed-ips 10.0.16.17
# # Authorize Michael's Wireguard public key
# wg set wg0 peer "V5uPB58ytCBAIYpGXTQV469AuBAf+fLuBzmP/oXe1SI=" allowed-ips 10.0.16.18
# # Authorize Karun's Wireguard public key
# wg set wg0 peer "7gD75TIyTHfpQ6sGbczvscPTy+q2/IsqxyMAsX6LuF8=" allowed-ips 10.0.16.22
# # Authorize Shudong's Wireguard public key
# wg set wg0 peer "b8hSO/YAC+8LnB8SB/fKVSX99FlgMkItFTfnQ10UIVo=" allowed-ips 10.0.16.23
# # Authorize Tom's Wireguard public key
# wg set wg0 peer "58YAux/jBJkWZugkwEjMjl2QkA8/r8lb4vU/hTfKJks=" allowed-ips 10.0.16.24
# # Authorize Damian's Wireguard public key
# wg set wg0 peer "x9Zw80cDXI4qti/FCzX3pprBMeaUo9Rvl2GdrCgOdAQ=" allowed-ips 10.0.16.25
# # Authorize Aden's Wireguard public key
# wg set wg0 peer "Ar48Kb6nsr/EXtsCkroywGQUQSGA+LgVK+DlmNAIHAA=" allowed-ips 10.0.16.26
# # Authorize Douglas' Wireguard public key
# wg set wg0 peer "ljwUcEjWKEFtm3ln2eBRpdh7lqdS/HgT7L6iedkX/SA=" allowed-ips 10.0.16.27
# # Authorize Carlo's Wireguard public key
# wg set wg0 peer "9tWjIJhDXPEOzYV8rE/WVYg+Cet5SfresZgcxjAfERY=" allowed-ips 10.0.16.28
# # Authorize Siva's Wireguard public key
# wg set wg0 peer "SP4LQnKo7MU2VH1wdpJbNwnvDQ69yeM4zmaHo8bDezQ=" allowed-ips 10.0.16.29
# # Authorize Peter's Wireguard public key
# wg set wg0 peer "e2md4Ufuswc2vMhfbE5UjQvZ6Dg9lLpna9yGB4ODvW8=" allowed-ips 10.0.16.30
# # Authorize Leo's Wireguard public key
# wg set wg0 peer "4lMvyCHityouEr642ZN7gGkkQ/Em9OS5Bs2rYmkLIjA=" allowed-ips 10.0.16.31
# # Authorize Emmanuel's Wireguard public key
# wg set wg0 peer "4gGTWgSlVtJojRwp3KqFLk/0MCerosg0+phs+yF2CS0=" allowed-ips 10.0.16.32
# # Authorize Satheesh's Wireguard public key
# wg set wg0 peer "/560nhA/SpwXMkEp1OXpPuujy7h7xSyddSPd7W1EBwQ=" allowed-ips 10.0.16.33
# # Authorize Umer's Wireguard public key
# wg set wg0 peer "QnKQQcMWocup6dSJ5ru69lIwdAfV1MKyFEMcUzu2wgo=" allowed-ips 10.0.16.34
# # Authorize Amrinder's Wireguard public key
# wg set wg0 peer "0BaKtUgV0+zU95taB7lUMUR2qfXccxA5JZDEB7R70Hw=" allowed-ips 10.0.16.35
# # Authorize Seyi's Wireguard public key
# wg set wg0 peer "2kgoWzdDKXJsFkipQWLb21rihB+9yCC1yJ90zBeUsRo=" allowed-ips 10.0.16.36
# # Authorize David's Wireguard public key
# wg set wg0 peer "raKIhQ8aXYZQECxbqX1TC+qwvipm08KobldGrKT2vD4=" allowed-ips 10.0.16.37

# # Install AWS CLI and attach Elastic IP
# INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
# EIP_ID=${eip_id}
# aws ec2 associate-address --instance-id $INSTANCE_ID --allocation-id $EIP_ID --region us-east-1

# systemctl stop wg-quick@wg0
# systemctl start wg-quick@wg0
