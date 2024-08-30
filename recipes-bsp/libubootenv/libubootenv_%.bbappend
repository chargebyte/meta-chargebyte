FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PACKAGE_ARCH:class-target = "${MACHINE_ARCH}"

SRC_URI:append:class-target = " file://fw_env.config"

do_install:append:class-target () {
        install -d ${D}${sysconfdir}
        install -m 0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
}
