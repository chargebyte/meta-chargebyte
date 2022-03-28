FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# override kernel source
SRCBRANCH = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
             'v4.11.12-evacharge-se-dfs', 'v4.9.11', d)}"
SRCREV    = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
             '9a6be4a56f84fa95ec0c2cb85671972894051ca0', '6e9d0da6341b0ceeff4bc62c936d544d36044958', d)}"

# OppCharge requires a different defconfig from its kernel tree, see KERNEL_DEFCONFIG below
SRC_URI = "\
           git://github.com/I2SE/linux.git;protocol=https;branch=${SRCBRANCH} \
           ${@bb.utils.contains('SUBMACHINE', 'oppcharge', '', 'file://defconfig', d)} \
          "
LOCALVERSION = "-in-tech-sc"

COMPATIBLE_MACHINE = "(mxs|mx6|mx7|mx8)"

# OppCharge kernel tree contains the required defconfig
KERNEL_DEFCONFIG = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', 'evacharge-se_defconfig', '', d)}"

do_preconfigure:prepend() {
    if [ -n "${KERNEL_DEFCONFIG}" ]; then
        DEFC=${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG}
        if [ -f "${DEFC}" ]; then
            install -p -m 0644 "${DEFC}" ${WORKDIR}/defconfig
        fi
    fi
}
