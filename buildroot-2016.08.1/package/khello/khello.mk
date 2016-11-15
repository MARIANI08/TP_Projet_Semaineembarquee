KHELLO_VERSION = 1.0
KHELLO_SITE = $(TOPDIR)/package/khello/driver
KHELLO_SITE_METHOD = local
KHELLO_LICENCE = GPLv3+

define KHELLO_BUILD_CMDS
	$(MAKE) -C $(LINUX_DIR) $(LINUX_MAKE_FLAGS) M=$(@D)
endef

define KHELLO_INSTALL_TARGET_CMDS
	$(MAKE) -C $(LINUX_DIR) $(LINUX_MAKE_FLAGS) M=$(@D) modules_install
endef

$(eval $(generic-package))
