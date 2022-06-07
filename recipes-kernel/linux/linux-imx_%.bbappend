FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# override kernel source
SRCBRANCH = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
             'v4.11.12-evacharge-se-dfs', 'v4.9.11', d)}"
SRCREV    = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
             '9a6be4a56f84fa95ec0c2cb85671972894051ca0', '6e9d0da6341b0ceeff4bc62c936d544d36044958', d)}"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"


# OppCharge requires a different defconfig from its kernel tree, see KERNEL_DEFCONFIG below
SRC_URI = "\
           git://github.com/I2SE/linux.git;protocol=https;branch=${SRCBRANCH} \
           ${@bb.utils.contains('SUBMACHINE', 'oppcharge', '', 'file://defconfig', d)} \
          "
LINUX_VERSION_EXTENSION = "-in-tech-sc"

LINUX_VERSION = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
                 '4.11.12', '4.9.11', d)}"

KCONFIG_MODE="--alldefconfig"

COMPATIBLE_MACHINE = "(mxs|mx6|mx7|mx8)"

# OppCharge kernel tree contains the required defconfig
KBUILD_DEFCONFIG = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', 'evacharge-se_defconfig', '', d)}"
