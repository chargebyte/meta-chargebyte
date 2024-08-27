# override kernel source
SRCBRANCH = "v6.1-tarragon"

SRCREV = "a3c2cea79b7019fe674c4fccc62f54998b509693"

SRC_URI += " file://defconfig"

LINUX_VERSION = "6.1.49"

# do not use a in-tree defconfig but the file from here
KBUILD_DEFCONFIG = ""

COMPATIBLE_MACHINE = "(mx6)"
