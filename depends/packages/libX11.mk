package=libX11
$(package)_version=1.6.2
$(package)_download_path=https://www.x.org/releases/individual/lib/
$(package)_file_name=$(package)-$($(package)_version).tar.bz2

$(package)_dependencies=libxcb xtrans xextproto xproto

define $(package)_set_vars
$(package)_config_opts=--disable-xkb --disable-static
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
