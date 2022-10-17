# we are still using kernel v4.9 and wireless-regdb-static requires kernel >= 4.15
RDEPENDS:${PN}:remove = "wireless-regdb-static"
RDEPENDS:${PN}:append = " wireless-regdb"
