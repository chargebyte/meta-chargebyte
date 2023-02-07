FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# override kernel source
SRCBRANCH = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
             'v4.11.12-evacharge-se-dfs', 'v4.9.11', d)}"
SRCREV    = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', \
             'e428eefb422653dcd5983ff685b9b0972a961b3c', '87f8fccf0251394fc6fbd5bdddff573230e4e944', d)}"

# OppCharge requires a different defconfig from its kernel tree, see KERNEL_DEFCONFIG below
SRC_URI = "\
           git://github.com/chargebyte/linux.git;protocol=https;branch=${SRCBRANCH} \
           ${@bb.utils.contains('SUBMACHINE', 'oppcharge', '', 'file://defconfig', d)} \
          "
LOCALVERSION = "-chargebyte"

COMPATIBLE_MACHINE = "(mxs|mx6|mx7|mx8)"

# OppCharge kernel tree contains the required defconfig
KERNEL_DEFCONFIG = "${@bb.utils.contains('SUBMACHINE', 'oppcharge', 'evacharge-se_defconfig', '', d)}"

do_preconfigure_prepend() {
    if [ -n "${KERNEL_DEFCONFIG}" ]; then
        DEFC=${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG}
        if [ -f "${DEFC}" ]; then
            install -p -m 0644 "${DEFC}" ${WORKDIR}/defconfig
        fi
    fi
}
