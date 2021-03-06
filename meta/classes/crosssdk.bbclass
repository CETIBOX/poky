inherit cross

CLASSOVERRIDE = "class-crosssdk"
MACHINEOVERRIDES = ""
PACKAGE_ARCH = "${SDK_ARCH}"
python () {
	# set TUNE_PKGARCH to SDK_ARCH
	d.setVar('TUNE_PKGARCH', d.getVar('SDK_ARCH'))
}

STAGING_BINDIR_TOOLCHAIN = "${STAGING_DIR_NATIVE}${bindir_native}/${TARGET_ARCH}${TARGET_VENDOR}-${TARGET_OS}"

# This class encodes staging paths into its scripts data so can only be
# reused if we manipulate the paths.
SSTATE_SCAN_CMD ?= "${SSTATE_SCAN_CMD_NATIVE}"

TARGET_ARCH = "${SDK_ARCH}"
TARGET_VENDOR = "${SDK_VENDOR}"
TARGET_OS = "${SDK_OS}"
TARGET_PREFIX = "${SDK_PREFIX}"
TARGET_CC_ARCH = "${SDK_CC_ARCH}"
TARGET_LD_ARCH = "${SDK_LD_ARCH}"
TARGET_AS_ARCH = "${SDK_AS_ARCH}"
TARGET_CPPFLAGS = "${BUILD_CPPFLAGS}"
TARGET_CFLAGS = "${BUILD_CFLAGS}"
TARGET_CXXFLAGS = "${BUILD_CXXFLAGS}"
TARGET_LDFLAGS = "${BUILD_LDFLAGS}"
TARGET_FPU = ""


target_libdir = "${SDKPATHNATIVE}${libdir_nativesdk}"
target_includedir = "${SDKPATHNATIVE}${includedir_nativesdk}"
target_base_libdir = "${SDKPATHNATIVE}${base_libdir_nativesdk}"
target_prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
target_exec_prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
baselib = "lib"

do_populate_sysroot[stamp-extra-info] = ""
do_packagedata[stamp-extra-info] = ""

# Need to force this to ensure consitency across architectures
EXTRA_OECONF_GCC_FLOAT = ""

USE_NLS = "no"
