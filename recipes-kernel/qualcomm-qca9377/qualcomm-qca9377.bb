require qualcomm-qca9377.inc

PACKAGES += "${PN}-firmware"

SRC_URI += " \
            file://81-wlan0-hostapd.rules \
           "

do_install() {
    # firmware
    install -d ${D}${nonarch_base_libdir}/firmware/wlan
    install -p -m644 -o root -g root ${S}/firmware_bin/usb/*.bin ${D}${nonarch_base_libdir}/firmware/
    install -p -m644 -o root -g root ${S}/firmware_bin/usb/wlan/*.ini ${D}${nonarch_base_libdir}/firmware/wlan/
    # udev rule
    install -d ${D}${nonarch_base_libdir}/udev/rules.d/
    install -p -m644 -o root -g root ${WORKDIR}/*.rules ${D}${nonarch_base_libdir}/udev/rules.d/
}

do_compile() {
    # avoid building a kernel module when just installing other files
    :
}

FILES:${PN}-firmware += "${nonarch_base_libdir}/firmware/"
