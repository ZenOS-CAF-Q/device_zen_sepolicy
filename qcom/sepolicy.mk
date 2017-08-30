#
# This policy configuration will be used by all qcom products
# that inherit from ZenOS
#

BOARD_SEPOLICY_DIRS += \
    device/zen/sepolicy/qcom \
    device/zen/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
