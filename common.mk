#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-uct

# Common init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom

# Kernel
PRODUCT_ENABLE_UFFD_GC := true

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Shipping API
BOARD_SHIPPING_API_LEVEL := 33
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/ayn/sxr2130p-common/sxr2130p-common-vendor.mk)
