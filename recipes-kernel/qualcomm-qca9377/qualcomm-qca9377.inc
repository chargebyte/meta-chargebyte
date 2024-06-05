SUMMARY = "8devices BLUE bean and RED bean drivers and firmware"
SECTION = "networking"
# explicitly states MODULE_LICENSE("Dual BSD/GPL")
LICENSE = "GPL-2.0-or-later | BSD-2-Clause"

SRC_URI = "git://github.com/chargebyte/qcacld-2.0.git;protocol=https;branch=CNSS.LEA.NRT_3.0-i2se-kirkstone"
SRCREV = "adcc3659f961fd535cd5dce55989e0393613ceaa"
PE = "1"
PV = "0.0+git${SRCPV}"

S = "${WORKDIR}/git"
