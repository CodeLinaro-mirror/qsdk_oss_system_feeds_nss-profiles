NSS_COMMON:= kmod-qca-nss-dp

NSS_MACSEC:= \
	kmod-qca-nss-macsec \
	qca-wpa-supplicant-macsec \
	qca-hostap-macsec \
	qca-hapd-supp-macsec

QCA_ECM_STANDARD:= kmod-qca-nss-ecm-standard

QCA_ECM_ENTERPRISE:= kmod-qca-nss-ecm-noload kmod-qca-nss-ecm-wifi-plugin

QCA_ECM_PREMIUM:= kmod-qca-nss-ecm-premium kmod-qca-nss-ecm-wifi-plugin

NSS_PPE_256:= kmod-qca-nss-ppe \
	kmod-qca-nss-ppe-vp \
	kmod-qca-nss-ppe-bridge-mgr \
	kmod-qca-nss-ppe-pppoe-mgr \
	kmod-qca-nss-ppe-ds \
	kmod-qca-nss-ppe-dsa-mgr

NSS_PPE_16M:= kmod-qca-nss-ppe \
	kmod-qca-nss-ppe-vp \
	kmod-qca-nss-ppe-bridge-mgr \
	kmod-qca-nss-ppe-pppoe-mgr \
	kmod-qca-nss-ppe-lag-mgr \
	kmod-qca-nss-ppe-dsa-mgr

NSS_PPE:= kmod-qca-nss-ppe \
	kmod-qca-nss-ppe-vp \
	kmod-qca-nss-ppe-bridge-mgr \
	kmod-qca-nss-ppe-pppoe-mgr \
	kmod-qca-nss-ppe-lag-mgr \
	kmod-qca-nss-ppe-tunipip6 \
	kmod-qca-nss-ppe-gre-mgr \
	kmod-qca-nss-ppe-vxlanmgr \
	kmod-qca-nss-ppe-mapt \
	kmod-qca-nss-ppe-rule \
	kmod-qca-nss-ppe-qdisc \
	kmod-qca-nss-ppe-ds \
	kmod-qca-nss-ppe-mirror-test \
	kmod-qca-nss-ppe-l2tp \
	kmod-qca-nss-ppe-dsa-mgr

NSS_CRYPTO_MINENT:= kmod-qca-nss-crypto kmod-qca-nss-cfi-cryptoapi -kmod-qca-nss-cfi-ocf kmod-qca-nss-drv-ipsecmgr kmod-qca-nss-drv-ipsecmgr-xfrm -kmod-crypto-ocf -kmod-qca-nss-drv-ipsecmgr-klips

NSS_CLIENTS_STANDARD:= kmod-qca-ovsmgr kmod-qca-nss-dscpstats

NSS_CRYPTO:= kmod-qca-nss-crypto kmod-qca-nss-cfi-cryptoapi \
        kmod-qca-nss-eip kmod-qca-nss-eip-crypto kmod-qca-nss-eip-ipsec

NSS_NETFN_MINENT:= kmod-qca-nss-netfn-pkt-steer \
	kmod-qca-nss-netfn-capwap \
	kmod-qca-nss-netfn-dtls \
	kmod-qca-nss-netfn-capwapmgr \
	kmod-qca-nss-flowmgr

NSS_NETFN_TCPST:= nss-tcp-st-cli

NSS_UDP_ST:= kmod-nss-udp-st-drv nss-udp-st

NSS_NSM:= qca-nsm-app

NSS_FLS:= kmod-qca-nss-fls kmod-qca-nss-fls-lite

OPENVPN:= -openvpn-easy-rsa openvpn-openssl luci-app-openvpn

UDP_CLF:= udp-clf

SAL_QOS:= qca-sal-qos-test qca-sal-rule-test

SWITCH_SSDK_NOHNAT_PKGS:= kmod-qca-ssdk-nohnat qca-ssdk-shell swconfig kmod-qca8k

QCA_PHY_PKGS:= kmod-qca-nss-phy kmod-qca81xx kmod-qca8084 kmod-aqr-phy \
	       kmod-qca8xxx-phc kmod-qca-mdio

MACSEC_OPEN_PKGS:= kmod-qca-nss-macsec wpa-supplicant-macsec hostapd-macsec

NSS_L2TP:= kmod-l2tp kmod-l2tp-ip kmod-l2tp-eth

WIFI_PLUGINS:=kmod-qca-wifi-nss-plugins
NSS_PLUGINS:=kmod-qca-nss-wifi-plugins
ATH_CLIENT:=kmod-qca-nss-ppe-ath-clients

DEFAULT_PACKAGES += -dnsmasq

NETWORKING:=mcproxy -dnsmasq dnsmasq-dhcpv6 bridge ip-bridge ip-full mwan3 \
	rp-pppoe-relay iptables-mod-extra iputils-tracepath iputils-tracepath6 \
	luci-app-upnp luci-app-ddns luci-proto-ipv6 \
	kmod-nf-nathelper-extra kmod-nf-nathelper \
	kmod-ipt-nathelper-rtsp nftables kmod-nft-netdev \
	kmod-nft-offload kmod-bonding vxlan kmod-gre6 conntrack

NETWORKING_256MB:=-dnsmasq dnsmasq-dhcpv6 bridge ip-full \
	rp-pppoe-relay iputils-tracepath iputils-tracepath6

NETWORKING_8MB:=dnsmasq -dnsmasq-dhcpv6 kmod-nf-nathelper-extra kmod-ipt-nathelper-rtsp

NETWORKING_16MB:=-dnsmasq dnsmasq-dhcpv6 kmod-nf-nathelper-extra kmod-ipt-nathelper-rtsp ip \
	rp-pppoe-relay

NPT66:= kmod-ipt-nat6 iptables-mod-nat-extra

CD_ROUTER:=kmod-ipt-ipopt kmod-bonding kmod-ipt-sctp kmod-ipt-raw kmod-ipt-raw6 lacpd \
	arptables ds-lite 6rd ddns-scripts xl2tpd \
	quagga quagga-ripd quagga-zebra quagga-watchquagga quagga-vtysh \
	kmod-ipv6 ip6tables iptables-mod-ipsec iptables-mod-filter \
	isc-dhcp-relay-ipv6 rp-pppoe-server ppp-mod-pptp iptables-mod-physdev

CD_ROUTER_256MB:=kmod-ipv6 ddns-scripts rp-pppoe-server

QOS:=tc-full kmod-sched kmod-sched-core kmod-sched-prio kmod-sched-red \
	kmod-sched-cake kmod-sched-pie kmod-sched-act-police kmod-sched-act-ipt \
	kmod-sched-connmark kmod-ifb iptables iptables-mod-filter \
	iptables-mod-ipopt iptables-mod-conntrack-extra

#These packages depend on SWITCH_SSDK_NOHNAT_PKGS
IGMPSNOOPING_RSTP:=rstp qca-mcs-apps

IPSEC:=kmod-ipsec kmod-ipsec4 kmod-ipsec6

NSS_USERSPACE_OSS:=ppecfg

NSS_FLS:=kmod-qca-nss-fls kmod-qca-nss-fls-lite

EMESH_SP:=kmod-emesh-sp

DPDK:=dpdk-tools kmod-qca-nss-dpdk-cfgmgr kmod-nss-ppe-uio

EXTRA_NETWORKING:= $(CD_ROUTER) kmod-qca-nss-macsec \
	$(MACSEC_OPEN_PKGS) $(NSS_CRYPTO) $(NSS_CLIENTS_STANDARD) $(WIFI_PLUGINS) $(NSS_PLUGINS) $(ATH_CLIENT)

STRONGSWAN:=strongswan strongswan-default strongswan-mod-ctr strongswan-mod-gcm strongswan-mod-kdf strongswan-mod-openssl strongswan-mod-uci

MMAP_TELEMETRY:= kmod-qca-mmap-telemetry
