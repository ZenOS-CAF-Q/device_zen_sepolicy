#
# This policy configuration will be used by all qcom products
# that inherit from ZenOS
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/zen/sepolicy/qcom/private

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_SEPOLICY_DIRS += \
    device/zen/sepolicy/qcom/vendor
endif
