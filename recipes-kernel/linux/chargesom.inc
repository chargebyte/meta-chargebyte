# override kernel source
SRCBRANCH = "v6.12.34-2.1.0-phy-cb"

SRCREV = "${AUTOREV}"

LINUX_VERSION = "6.12.34"

# Charge SOM has in-tree defconfig
KBUILD_DEFCONFIG = "imx93-chargebyte_defconfig"

COMPATIBLE_MACHINE = "(mx93)"
