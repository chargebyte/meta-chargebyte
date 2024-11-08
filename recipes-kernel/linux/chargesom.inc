# override kernel source
SRCBRANCH = "v6.6.23-2.0.0-phy-cb"

SRCREV = "${AUTOREV}"

LINUX_VERSION = "6.6.23"

# Charge SOM has in-tree defconfig
KBUILD_DEFCONFIG = "imx93-charge-som-dc-evb_defconfig"

COMPATIBLE_MACHINE = "(mx93)"
