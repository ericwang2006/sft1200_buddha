#!/bin/sh
sed -i '/sft1200_buddha/d' /etc/opkg/customfeeds.conf
echo "src/gz sft1200_buddha https://cdn.jsdelivr.net/gh/ericwang2006/sft1200_buddha" >>/etc/opkg/customfeeds.conf
opkg update
action="$1"
case "${action}" in
--ssr-plus)
	opkg install luci luci-i18n-base-zh-cn luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn
	;;
--passwall)
	opkg install luci luci-i18n-base-zh-cn luci-app-passwall luci-i18n-passwall-zh-cn
	;;
*)
	opkg install luci luci-i18n-base-zh-cn luci-app-passwall luci-i18n-passwall-zh-cn luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn
	;;
esac
