#############################################################
#
# LIBGPHOTO2
#
#############################################################

LIBGPHOTO2_VERSION = 2.5.0
LIBGPHOTO2_SOURCE = libgphoto2-$(LIBGPHOTO2_VERSION).tar.gz
LIBGPHOTO2_SITE = http://$(BR2_SOURCEFORGE_MIRROR).dl.sourceforge.net/sourceforge/gphoto/libgphoto
LIBGPHOTO2_INSTALL_STAGING = YES
LIBGPHOTO2_INSTALL_TARGET = YES
LIBGPHOTO2_INSTALL_TARGET_OPT = DESTDIR=$(TARGET_DIR) install
LIBGPHOTO2_CONF_OPT = --enable-static --enable-shared
LIBGPHOTO2_DEPENDENCIES = host-pkg-config libusb-compat libtool
#LIBGPHOTO2_CONF_ENV = ac_cv_path_LIBUSB_CONFIG=$(STAGING_DIR)/usr/bin/libusb-config

$(eval $(call AUTOTARGETS,package,libgphoto2))
