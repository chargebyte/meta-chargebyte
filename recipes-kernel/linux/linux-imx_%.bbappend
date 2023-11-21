FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# override kernel source
SRCBRANCH = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
                    'v4.11.12-evacharge-se-dfs', \
                    bb.utils.contains('MACHINE', 'tarragon', \
                        'v6.1-tarragon', \
                        'v4.9.11', \
                    d), \
                d)}"

SRCREV    = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
                    'e428eefb422653dcd5983ff685b9b0972a961b3c', \
                    bb.utils.contains('MACHINE', 'tarragon', \
                        'f50ffd72e5fe959d27a012422f2c269f3d45c8e0', \
                        '87f8fccf0251394fc6fbd5bdddff573230e4e944', \
                    d), \
                d)}"

LIC_FILES_CHKSUM = "file://COPYING;md5=${@bb.utils.contains('MACHINE', 'tarragon', \
                    '6bc538ed5bd9a7fc9398086aedcd7e46', 'd7810fab7487fb0aad327b76f1be7cd7', d)}"

# OppCharge requires a different defconfig from its kernel tree, see KERNEL_DEFCONFIG below
SRC_URI = "\
           git://github.com/chargebyte/linux.git;protocol=https;branch=${SRCBRANCH} \
           ${@bb.utils.contains('SUBMACHINE', 'oppcharge', '', 'file://defconfig', d)} \
          "

LINUX_VERSION_EXTENSION = "-chargebyte"

LINUX_VERSION = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
                        '4.11.12', \
                        bb.utils.contains('MACHINE', 'tarragon', \
                            '6.1.49', \
                            '4.9.11', \
                        d), \
                    d)}"

KCONFIG_MODE="--alldefconfig"

COMPATIBLE_MACHINE = "(mxs|mx6|mx7|mx8)"

# OppCharge kernel tree contains the required defconfig
KBUILD_DEFCONFIG = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', 'evacharge-se_defconfig', '', d)}"
