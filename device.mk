# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)


PRODUCT_PROPERTY_OVERRIDES += \
	ro.orangefox.dynamic.build=true \
	ro.boot.dynamic_partitions=true \
	ro.boot.dynamic_partitions_retrofit=true

# Fastbootd
TW_INCLUDE_FASTBOOTD := true
PRODUCT_PACKAGES += \
    fastbootd

TW_INCLUDE_CRYPTO := true
BOARD_USES_QCOM_FBE_DECRYPTION := true
PLATFORM_VERSION := 99.87.36
PLATFORM_SECURITY_PATCH := 2127-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

OF_FBE_METADATA_MOUNT_IGNORE := 1
OF_FIX_DECRYPTION_ON_DATA_MEDIA := 1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.crypto.dm_default_key.options_format.version=2 \
	ro.crypto.volume.filenames_mode=aes-256-cts \
	ro.crypto.volume.metadata.method=dm-default-key \
	ro.crypto.allow_encrypt_override=true \
	ro.crypto.volume.options=::v2 \
	ro.crypto.uses_fs_ioc_add_encryption_key=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.orangefox.kernel_ver=4.19


TW_SUPPORT_INPUT_AIDL_HAPTICS := true

RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_VENDOR_EXECUTABLES)/hw/vendor.qti.hardware.vibrator.service

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.qti.hardware.vibrator.impl.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libqtivibratoreffect.so

TARGET_RECOVERY_DEVICE_MODULES += \
    vendor.qti.hardware.vibrator.service \
    vendor.qti.hardware.vibrator.impl \
    libqtivibratoreffect


PRODUCT_PROPERTY_OVERRIDES += \
	ro.fastbootd.available=true

# Qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
