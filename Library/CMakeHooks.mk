# CMake Formula
#
# CMake Hooks.
#
# Insisting on using $(BuildDir)/build to build the executable
# after reading the build instructions for all the Ports we have that use cmake
#

BuildRequires += $(BinDir)/cmake

CMakeExtra += -DCMAKE_BUILD_TYPE=Release
CMakeExtra += -DCMAKE_INSTALL_PREFIX=$(Prefix)

ifeq ($(RUDIX_BUILD_STATIC_LIBS),yes)
CMakeExtra += -DBUILD_STATIC_LIBS=ON
endif

define before_build_hook
mkdir -p $(BuildDir)/build && \
cd $(BuildDir)/build && \
env $(EnvExtra) cmake .. $(CMakeExtra)
endef

define build_hook
cd $(BuildDir)/build && \
env $(EnvExtra) make $(MakeExtra)
endef

define install_hook
cd $(BuildDir)/build && \
$(make_install) DESTDIR="$(DestDir)" $(MakeInstallExtra)
$(install_base_documentation)
$(install_examples)
$(strip_macho)
endef

ifeq ($(RUDIX_RUN_ALL_TESTS),yes)
define check_hook
cd $(BuildDir)/build && $(MAKE) test || $(call error_color,One or more tests failed)
endef
endif

buildclean:
	cd $(BuildDir)/build && $(MAKE) clean || $(call warning_color,Cannot clean)
	rm -f build check
