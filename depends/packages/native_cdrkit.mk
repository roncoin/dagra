package=native_cdrkit
$(package)_version=1.1.11-1
$(package)_download_path=https://ftp.gnome.org/mirror/cygwin/x86/release/cdrkit/
$(package)_file_name=cdrkit-$($(package)_version).tar.bz2

$(package)_patches=cdrkit-deterministic.patch

define $(package)_preprocess_cmds
  patch -p1 < $($(package)_patch_dir)/cdrkit-deterministic.patch
endef

define $(package)_config_cmds
  cmake -DCMAKE_INSTALL_PREFIX=$(build_prefix)
endef

define $(package)_build_cmds
  $(MAKE) genisoimage
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) -C genisoimage install
endef

define $(package)_postprocess_cmds
  rm bin/isovfy bin/isoinfo bin/isodump bin/isodebug bin/devdump
endef
