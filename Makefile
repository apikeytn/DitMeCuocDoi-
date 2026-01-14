TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = TrongQuoc

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TrongQuoc

TrongQuoc_FILES = main.m AppDelegate.m MenuView.m NuggetIcons.m
TrongQuoc_FRAMEWORKS = UIKit CoreGraphics QuartzCore
TrongQuoc_CFLAGS = -fobjc-arc
TrongQuoc_INSTALL_PATH = /Applications

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall -9 TrongQuoc" || true
	