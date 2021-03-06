	# full wing product config
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/softwinner/common/sw-common.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/wing-common/overlay

#apk envsa
PRODUCT_PACKAGES += \
	libscreenblkjni \
	libethinfojni \
	libnetsetupjni \
	libfileaccessjni \
	frameworks-envsa \
	envsastarter
	
#wifi
PRODUCT_PACKAGES += \
	lib_driver_cmd_rtl
	
# display
PRODUCT_PACKAGES += \
	gralloc.sun7i \
	libEGL_mali \
	libGLESv1_CM_mali \
	libGLESv2_mali \
	libMali\
	libUMP
	
# setver ssh
PRODUCT_PACKAGES += \
	ssh \
	sftp \
	scp \
	sshd \
	ssh-keygen \
	sshd_config\
	start-ssh \
	default_authorized_keys

PRODUCT_PACKAGES += \
	libemoji \
    Bluetooth \
    FusedLocation \
    InputDevices \
    Keyguard \
    LatinIME \
    Phone \
    PrintSpooler \
    Provision \
    Settings \
    SystemUI \
    TeleService \
    TestingCamera \
    WAPPushManager \
    apache-xml \
    audio \
    audio_policy.default \
    audio.primary.default \
    bouncycastle \
    cacerts \
    com.android.future.usb.accessory \
    conscrypt \
    core \
    core-junit \
    dalvikvm \
    dexdeps \
    dexdump \
    dexlist \
    dexopt \
    dmtracedump \
    dx \
    ext \
    hostapd \
    hprof-conv \
    libcrypto \
    libdvm \
    libexpat \
    libicui18n \
    libicuuc \
    libjavacore \
    libnativehelper \
    librs_jni \
    libssl \
    libvideoeditor_core \
    libvideoeditor_jni \
    libvideoeditor_osal \
    libvideoeditorplayer \
    libvideoeditor_videofilters \
    libz \
    lint \
    local_time.default \
    network \
    okhttp \
    pand \
    power.default \
    sdptool \
    vibrator.default \
    wpa_supplicant.conf


PRODUCT_PACKAGES += \
  	libion \
	display.sun7i \
	hwcomposer.exDroid \
	display.exdroid \
	sensors.exDroid \
	lights.sun7i \
	audio.primary.exDroid
#	camera.exDroid \

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default  \
	audio.r_submix.default \
	libaudioutils \
	libcedarxbase \
	libcedarxosal \
	libcedarv \
	libcedarv_base \
	libcedarv_adapter \
	libve \
	libaw_audio \
	libaw_audioa \
	libswdrm \
	libstagefright_soft_cedar_h264dec \
	libfacedetection \
	libthirdpartstream \
	libcedarxsftstream \
    	libion_alloc \
	libjpgenc \
	libaw_h264enc \
	libI420colorconvert \
	libstagefrighthw \
	libOmxCore \
	libOmxVenc \
	libOmxVdec \
	Camera \
	libjni_mosaic \
	FileExplore \
	u3gmonitor \
	rild \
	chat \
	libjni_pinyinime \
	libsrec_jni \

PRODUCT_PACKAGES += \
	e2fsck \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p \
	make_ext4fs

PRODUCT_PACKAGES += \
	LiveWallpapersPicker \
	LiveWallpapers \
	android.software.live_wallpaper.xml \
	SoundRecorder \
	FileExplore

# softwinner	
PRODUCT_PACKAGES +=  \
   android.softwinner.framework.jar \
   SoftWinnerService.apk \
   backup/SoftWinnerService.apk \
   libsoftwinner_servers.so \
   libupdatesoftwinner.so \
   librtsp.so \
   libjni_fireair.so \
   updatesoftwinner 

# keylayout
PRODUCT_COPY_FILES += \
	device/softwinner/wing-common/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl

# mali lib so
#PRODUCT_COPY_FILES += \
#	device/softwinner/wing-common/egl/gralloc.sun7i.so:system/lib/hw/gralloc.sun7i.so \
#	device/softwinner/wing-common/egl/libMali.so:system/lib/libMali.so \
#	device/softwinner/wing-common/egl/libUMP.so:system/lib/libUMP.so \
#	device/softwinner/wing-common/egl/egl.cfg:system/lib/egl/egl.cfg \
#	device/softwinner/wing-common/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
#	device/softwinner/wing-common/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
#	device/softwinner/wing-common/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so

PRODUCT_COPY_FILES += \
	device/softwinner/wing-common/egl/egl.cfg:system/lib/egl/egl.cfg \

# init.rc, kernel
PRODUCT_COPY_FILES += \
	device/softwinner/wing-common/init.rc:root/init.rc \
    device/softwinner/wing-common/init.sun7i.usb.rc:root/init.sun7i.usb.rc

# for boot nand/card auto detect 
#	device/softwinner/wing-common/busybox:root/sbin/busybox \
PRODUCT_COPY_FILES += \
	device/softwinner/wing-common/busybox:recovery/root/sbin/busybox \
	device/softwinner/wing-common/init_parttion.sh:root/sbin/init_parttion.sh \
	device/softwinner/wing-common/init_parttion.sh:recovery/root/sbin/init_parttion.sh

#premission feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_COPY_FILES += \
	device/softwinner/wing-common/media_codecs.xml:system/etc/media_codecs.xml \
	device/softwinner/wing-common/preinstall.sh:/system/bin/preinstall.sh \
	device/softwinner/wing-common/sensors.sh:/system/bin/sensors.sh \
	device/softwinner/wing-common/data_resume.sh:/system/bin/data_resume.sh \
	device/softwinner/wing-common/chrome-command-line:/system/etc/chrome-command-line
	
# wfd no invite
PRODUCT_COPY_FILES += \
    device/softwinner/wing-common/wfd_blacklist.conf:system/etc/wfd_blacklist.conf

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	keyguard.no_require_sim=true

# Enabling type-precise GC results in larger optimized DEX files.  The
# additional storage requirements for ".odex" files can cause /system
# to overflow on some devices, so this is configured separately for
# each product.
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	rild.libargs=-d/dev/ttyUSB2 \
	rild.libpath=/system/lib/libsoftwinner-ril.so \

	
PRODUCT_PACKAGES += \
	com.google.widevine.software.drm.xml \
	com.google.widevine.software.drm \
	com.android.future.usb.accessory \
	libdrmwvmplugin \
	libwvm \
	libWVStreamControlAPI_L3 \
	libwvdrm_L3 \
    libdrmdecrypt	
	
# pre-installed apks
#PRODUCT_COPY_FILES += \
#	$(call find-copy-subdir-files,*.apk,$(LOCAL_PATH)/preinstallapk,system/preinstall) \
#	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/apk,system/app) \
#	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/apklib,system/lib) \
#	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/googleservice/gapps-jb-20130301-signed/system,system) \

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/apklib,system/lib)

PRODUCT_PACKAGES += \
		PartnerBookmarksProvider

# if DISPLAY_BUILD_NUMBER := true then
# BUILD_DISPLAY_ID := $(BUILD_ID).$(BUILD_NUMBER)
# required by gms.
DISPLAY_BUILD_NUMBER := true
BUILD_NUMBER := $(shell date +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=true \
	ro.zygote.disable_gl_preload=false
	
PRODUCT_PACKAGES += \
	com.google.widevine.software.drm.xml \
	com.google.widevine.software.drm \
	libdrmwvmplugin \
	libwvm \
	libWVStreamControlAPI_L3 \
	libwvdrm_L3 \
  libdrmdecrypt	
