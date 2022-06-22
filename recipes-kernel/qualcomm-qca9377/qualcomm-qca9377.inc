SUMMARY = "8devices BLUE bean and RED bean drivers and firmware"
SECTION = "networking"
LICENSE = "CLOSED"

SRC_URI = "git://github.com/I2SE/qcacld-2.0.git;protocol=https;branch=CNSS.LEA.NRT_3.0-i2se-kirkstone"
SRCREV = "adcc3659f961fd535cd5dce55989e0393613ceaa"
PE = "1"
PV = "0.0+git${SRCPV}"

S = "${WORKDIR}/git"
