package:=native_libuuid
$(package)_version=1.41.14
$(package)_download_path=https://sourceforge.net/projects/e2fsprogs/files/e2fsprogs/1.41.14/
$(package)_file_name=e2fsprogs-libs-$($(package)_version).tar.gz


define $(package)_set_vars
$(package)_config_opts=--disable-elf-shlibs --disable-uuidd
$(package)_cflags+=-m32
$(package)_ldflags+=-m32
$(package)_cxxflags+=-m32
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE) -C lib/uuid
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) -C lib/uuid install
endef
