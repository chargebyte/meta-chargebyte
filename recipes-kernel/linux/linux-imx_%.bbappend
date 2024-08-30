FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI = "git://github.com/chargebyte/linux.git;protocol=https;branch=${SRCBRANCH}"

LINUX_VERSION_EXTENSION = "-chargebyte"

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

KCONFIG_MODE="--alldefconfig"

require ${MACHINE}.inc
