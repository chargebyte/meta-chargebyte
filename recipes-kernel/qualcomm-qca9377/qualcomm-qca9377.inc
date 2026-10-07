SUMMARY = "8devices BLUE bean and RED bean drivers and firmware"
SECTION = "networking"
# explicitly states MODULE_LICENSE("Dual BSD/GPL")
LICENSE = "GPL-2.0-or-later | BSD-2-Clause"
LIC_FILES_CHKSUM = "file://CORE/HDD/src/wlan_hdd_main.c;beginline=20511;endline=20511;md5=d3294313478278da0f1689534ae6f425"

SRC_URI = "git://github.com/chargebyte/qcacld-2.0.git;protocol=https;branch=CNSS.LEA.NRT_3.0-i2se-kirkstone"
SRCREV = "adcc3659f961fd535cd5dce55989e0393613ceaa"
PE = "1"
PV = "0.0+git${SRCPV}"

