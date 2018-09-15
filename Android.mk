LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_DEVICE),a83)

include $(call first-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

endif
