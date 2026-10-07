# override kernel source
SRCBRANCH = "v6.12.34-2.1.0-phy-cb"

SRCREV = "${AUTOREV}"

LINUX_VERSION = "6.12.34"

# tarragon has in-tree defconfig
# Must be an override (not a plain assignment): linux-imx_6.18.bb sets
# KBUILD_DEFCONFIG:mx6-generic-bsp, which is override-qualified and would
# otherwise silently win over a plain assignment here regardless of parse order.
KBUILD_DEFCONFIG:tarragon = "tarragon_defconfig"

COMPATIBLE_MACHINE = "(mx6)"
