## BoardConfigVendor.mk
## Qualcomm Technologies proprietary product specific compile-time definitions.
#

#Enable/Disable Camera Daemon
CAMERA_DAEMON_NOT_PRESENT := true
USE_CAMERA_STUB := false
BOARD_USES_QCOM_HARDWARE := true
DEVICE_PACKAGE_OVERLAYS += vendor/qcom/proprietary/common/msm8998/overlay
BOARD_USES_DPM := true
BOARD_USES_QCNE := true
TARGET_USES_IMS := true
TARGET_FASTCV_DISABLED := true
USESECIMAGETOOL := true
## Gensecimage generation of signed apps bootloader
QTI_GENSECIMAGE_MSM_IDS := msm8998
## Use signed image as default
QTI_GENSECIMAGE_SIGNED_DEFAULT := msm8998
#
##SECIMAGE tool feature flags
USES_SEC_POLICY_MULTIPLE_DEFAULT_SIGN := 1
USES_SEC_POLICY_INTEGRITY_CHECK := 1
USE_SOC_HW_VERSION := true
SOC_HW_VERSION := 0x30020000
SOC_VERS := 0x3005
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
BOARD_USES_LIBC_WRAPPER := true
BOARD_USES_ADRENO := true
HAVE_ADRENO_SOURCE := true
HAVE_ADRENO_SC_SOURCE := true
HAVE_ADRENO_FIRMWARE := true
TARGET_USES_ION := true
## wlan related flags
BOARD_HAS_QCOM_WLAN := true
#BOARD_HAS_QCOM_WIGIG := true
TARGET_USES_ICNSS_QMI := true
BOARD_HAS_ATH_WLAN_AR6320 := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_ARG := ""
WIFI_DRIVER_BUILT := qca_cld3
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_FST_DRIVER_MODULE_PATH := "/system/lib/modules/wil6210.ko"
WIFI_FST_DRIVER_MODULE_NAME := "wil6210"
WIFI_FST_DRIVER_MODULE_ARG := ""
WIFI1_DRIVER_MODULE_ARG := ""
WPA_SUPPLICANT_VERSION := VER_0_8_X
HOSTAPD_VERSION := VER_0_8_X
CONFIG_ACS := true
CONFIG_IEEE80211AC := true
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
BOARD_HAS_CFG80211_KERNEL3_4 := true
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := false
ifeq ($(AUDIO_FEATURE_ENABLED_3D_AUDIO), true)
-include $(TOPDIR) vendor/qcom/proprietary/mm-audio-noship/3DAudio/3DAudio-buildspec.mk
endif
ifneq ($(BUILD_TINY_ANDROID), true)
  CONFIG_EAP_PROXY := dummy
  ifneq ($(wildcard vendor/qcom/proprietary/mdm-helper/libmdmdetect),)
    CONFIG_EAP_PROXY_MDM_DETECT := true
  endif
  CONFIG_EAP_PROXY_DUAL_SIM := true
  CONFIG_EAP_PROXY_AKA_PRIME := true
  BOARD_HAVE_BLUETOOTH := true
  BOARD_HAVE_QCOM_FM := true
  BOARD_ANT_WIRELESS_DEVICE := "qualcomm-uart"
  BOARD_HAS_QCA_BT_SOC := "cherokee"
  ## Add FM chip type
  BOARD_HAS_QCA_FM_SOC := "cherokee"
  QCOM_BT_USE_SIBS := false
  WCNSS_FILTER_USES_SIBS := true

  ifeq ($(BOARD_HAVE_BLUETOOTH), true)
    #JB_MR2 use only bluedroid instead of bluez
    BOARD_HAVE_BLUETOOTH_BLUEZ := false
    ifneq ($(BOARD_HAVE_BLUETOOTH_BLUEZ), true)
      BOARD_HAVE_BLUETOOTH_QCOM := true
      QCOM_BT_USE_SMD_TTY := true
      BOARD_USES_WIPOWER := false
    endif # BOARD_HAVE_BLUETOOTH_BLUEZ
  endif # BOARD_HAVE_BLUETOOTH
endif # BUILD_TINY_ANDROID
TARGET_ENABLE_PROPRIETARY_SMARTCARD_SERVICE := true
TARGET_USES_QPAY := true
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_DRIVER_STATE_OFF := "OFF"
