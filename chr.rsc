# 2024-10-11 16:14:42 by RouterOS 7.16
# software id = 
#
/interface ethernet
set [ find default-name=ether2 ] name=LAN_PORT_2
set [ find default-name=ether1 ] disable-running-check=no name=WAN_PORT_1
/ip hotspot profile
add dns-name=wirenetwork.ini hotspot-address=10.20.20.1 name=hsprof1
/ip pool
add name=HOTSPOT_POOL ranges=10.20.20.2-10.20.20.200
/ip dhcp-server
add address-pool=HOTSPOT_POOL interface=LAN_PORT_2 name=DHCP_LAN_SERVER
/ip hotspot
add address-pool=HOTSPOT_POOL disabled=no interface=LAN_PORT_2 name=hotspot1 \
    profile=hsprof1
/ip hotspot user profile
set [ find default=yes ] address-pool=HOTSPOT_POOL
/disk settings
set auto-media-interface=lo
/ip address
add address=10.20.20.1/24 interface=LAN_PORT_2 network=10.20.20.0
/ip dhcp-client
add interface=WAN_PORT_1
/ip dhcp-server network
add address=10.20.20.0/24 gateway=10.20.20.1
/ip dns
set servers=8.8.8.8,4.2.2.2
/ip firewall filter
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
add action=drop chain=forward dst-address=1.1.1.1 dst-port=443 protocol=tcp
add action=drop chain=output dst-address=1.1.1.1 protocol=icmp
/ip firewall nat
add action=passthrough chain=unused-hs-chain comment=\
    "place hotspot rules here" disabled=yes
add action=masquerade chain=srcnat src-address=10.20.20.0/24
/ip hotspot user
add name=sherry
/radius
add address=35.227.71.209 service=hotspot
/system identity
set name=router1
/system note
set show-at-login=no
