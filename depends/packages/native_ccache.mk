package=native_ccache
$(package)_version=3.1.9
$(package)_download_path=https://www.samba.org/ftp/ccache/
$(package)_file_name=ccache-$($(package)_version).tar.bz2


define $(package)_set_vars
$(package)_config_opts=
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef

define $(package)_postprocess_cmds
  rm -rf lib include
endef
