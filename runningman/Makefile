include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = RunningMan
RunningMan_FILES = XXXRootListController.m
RunningMan_INSTALL_PATH = /Library/PreferenceBundles
RunningMan_FRAMEWORKS = UIKit
RunningMan_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/RunningMan.plist$(ECHO_END)
