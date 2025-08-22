LOCAL_PATH := device/itel/P682LPN

ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_ENFORCE_VINTF_MANIFEST := true
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_CHARACTERISTICS := default
PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_TARGET_VNDK_VERSION := 32
PRODUCT_SHIPPING_API_LEVEL := 32

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk-specific/fstab.P682LPN.first_stage_ramdisk:$(TARGET_COPY_OUT_RECOVERY)/first_stage_ramdisk/fstab.P682LPN.first_stage_ramdisk \
    $(LOCAL_PATH)/ramdisk-specific/init.recovery.P682LPN.rc:$(TARGET_COPY_OUT_RECOVERY)/init.recovery.P682LPN.rc \
    $(LOCAL_PATH)/ramdisk-specific/ueventd.P682LPN:$(TARGET_COPY_OUT_RECOVERY)/ueventd.P682LPN

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-impl.recovery

PRODUCT_PACKAGES += \
    libaudiopolicyengineconfigurable \
    libwifi-system \
    libft2

PRODUCT_PACKAGES += \
    libhwc2on1adapter \
    libsensorndkbridge \
    libalsautils \
    libpolicy-subsystem \
    libaudiofoundation.vendor \
    libnbaio_mono \
    libtinycompress_util \
    libtinyxml

PRODUCT_PACKAGES += \
    tinymix

PRODUCT_PACKAGES += \
    libhardware.recovery \
    gps.default \
    thermal.default

PRODUCT_PACKAGES += \
    libstdc++.vendor \
    libtrusty.vendor

PRODUCT_PACKAGES += \
    libbt-vendor

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

PRODUCT_PACKAGES += \
    libhealthd.recovery \
    libhealthd

PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-service

PRODUCT_PACKAGES += \
    libdrm \
    android.hardware.drm@1.3-service.clearkey

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.allocator@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.allocator@1.0.vendor \
    libbinderwrapper \
    libbinderwrapper.vendor \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    libwifi-hal

PRODUCT_PACKAGES +=\
    vndk_package

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

PRODUCT_PACKAGES += \
    bootctrl.default

PRODUCT_PACKAGES += \
     android.hardware.renderscript@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.usb@1.1-service

PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service

PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    NfcNci

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    audio.primary.default \
    local_time.default \
    vibrator.default \
    power.default

PRODUCT_PACKAGES += \
    android.hardware.power.stats@1.0-service.mock

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-service \
    android.hardware.sensors@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service

PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.trusty

PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service \
    android.hardware.vibrator@1.0-impl

PRODUCT_PACKAGES += \
    android.hardware.rebootescrow-service.default

PRODUCT_PACKAGES += \
    libkeymaster4.vendor \
    libkeymaster4_1support.vendor \
    libkeymaster4support.vendor \
    libkeymaster41.vendor \
    libkeymaster_messages.vendor \
    libpuresoftkeymasterdevice.vendor

PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.mock

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.3-service

PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-service

PRODUCT_PACKAGES += \
    android.hardware.gnss@2.1-service

PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.broadcastradio@2.0-impl \
    android.hardware.soundtrigger@2.0-impl \

PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service

PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

$(call inherit-product-if-exists, vendor/itel/P682LPN/P682LPN-vendor.mk)
