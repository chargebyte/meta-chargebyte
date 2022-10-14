FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# override kernel source
SRCBRANCH = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
             'v4.11.12-evacharge-se-dfs', 'v4.9.11', d)}"
SRCREV    = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
             'c2a062d7c11ec9e0617155e09830a035af6923a9', '87f8fccf0251394fc6fbd5bdddff573230e4e944', d)}"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

# OppCharge requires a different defconfig from its kernel tree, see KERNEL_DEFCONFIG below
SRC_URI = "\
           git://github.com/chargebyte/linux.git;protocol=https;branch=${SRCBRANCH} \
           ${@bb.utils.contains('SUBMACHINE', 'oppcharge', '', 'file://defconfig', d)} \
          "

inherit kernel_wireless_regdb

LINUX_VERSION_EXTENSION = "-chargebyte"

LINUX_VERSION = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
                 '4.11.12', '4.9.11', d)}"

KCONFIG_MODE="--alldefconfig"

COMPATIBLE_MACHINE = "(mxs|mx6|mx7|mx8)"

# OppCharge kernel tree contains the required defconfig
KBUILD_DEFCONFIG = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', 'evacharge-se_defconfig', '', d)}"
