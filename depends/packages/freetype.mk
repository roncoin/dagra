package=freetype
$(package)_version=2.5.3
$(package)_download_path=https://sourceforge.net/projects/freetype/files/freetype2/$(package)
$(package)_file_name=$(package)-$($(package)_version).tar.bz2


define $(package)_set_vars
  $(package)_config_opts=--without-zlib --without-png --disable-static
  $(package)_config_opts_linux=--with-pic
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
