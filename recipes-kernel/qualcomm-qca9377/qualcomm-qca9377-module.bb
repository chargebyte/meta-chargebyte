require qualcomm-qca9377.inc

DEPENDS = "virtual/kernel"
inherit module kernel-module-split

MAKE_TARGETS = "all"
MODULE_NAME = "wlan"
PKG:${PN} = "kernel-module-${MODULE_NAME}"

do_install() {
    # modules
    oe_runmake \
        INSTALL_MOD_PATH="${D}" \
        KERNEL_PATH=${STAGING_KERNEL_DIR}   \
        KERNEL_SRC=${STAGING_KERNEL_DIR}    \
        KERNEL_VERSION=${KERNEL_VERSION}    \
        CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
        AR="${KERNEL_AR}" \
        modules_install
}
