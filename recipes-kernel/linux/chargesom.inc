# override kernel source
SRCBRANCH = "v6.12.34-2.1.0-phy-cb"

SRCREV = "${AUTOREV}"

LINUX_VERSION = "6.12.34"

# Charge SOM has in-tree defconfig
# Must be an override (not a plain assignment): linux-imx_6.18.bb sets
# KBUILD_DEFCONFIG:mx9-generic-bsp, which is override-qualified and would
# otherwise silently win over a plain assignment here regardless of parse
# order. mx93-generic-bsp is more specific than mx9-generic-bsp and is
# shared by chargesom, lime and parsley (all of which require this file),
# so a single override here covers all three machines.
KBUILD_DEFCONFIG:mx93-generic-bsp = "imx93-chargebyte_defconfig"

COMPATIBLE_MACHINE = "(mx93)"
