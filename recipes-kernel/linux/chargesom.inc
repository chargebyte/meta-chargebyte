# override kernel source
SRCBRANCH = "v6.1.55_2.2.0-chargesom"

SRCREV = "${AUTOREV}"

LINUX_VERSION = "6.1.55"

# Charge SOM has in-tree defconfig
KBUILD_DEFCONFIG = "imx93-charge-som-dc-evb_defconfig"

COMPATIBLE_MACHINE = "(mx93)"
