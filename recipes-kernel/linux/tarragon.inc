# override kernel source
SRCBRANCH = "v6.12.34-2.1.0-phy-cb"

SRCREV = "${AUTOREV}"

LINUX_VERSION = "6.12.34"

# tarragpn has in-tree defconfig
KBUILD_DEFCONFIG = "tarragon_defconfig"

COMPATIBLE_MACHINE = "(mx6)"
