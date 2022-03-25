SUMMARY = "8devices BLUE bean and RED bean drivers and firmware"
SECTION = "networking"
LICENSE = "CLOSED"

SRC_URI = "git://github.com/I2SE/qcacld-2.0.git;protocol=https;branch=CNSS.LEA.NRT_3.0-i2se"
SRCREV = "032e1435ef9447db5e16cb06883f86209f0ec3ea"
PE = "1"
PV = "0.0+git${SRCPV}"

S = "${WORKDIR}/git"
