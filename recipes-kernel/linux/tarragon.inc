# override kernel source
SRCBRANCH = "v6.1-tarragon"

SRCREV = "b9bd0a215f0c229655beb9ad2022f34c361bb04f"

SRC_URI += " file://defconfig"

LINUX_VERSION = "6.1.142"

# do not use a in-tree defconfig but the file from here
KBUILD_DEFCONFIG = ""

COMPATIBLE_MACHINE = "(mx6)"
