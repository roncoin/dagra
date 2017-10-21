package=native_comparisontool
$(package)_version=0f7b5d8
$(package)_download_path=https://z.cash/depends-sources/
$(package)_file_name=pull-tests-$($(package)_version).jar

$(package)_install_dirname=BitcoindComparisonTool_jar
$(package)_install_filename=BitcoindComparisonTool.jar

define $(package)_extract_cmds
endef

define $(package)_configure_cmds
endef

define $(package)_build_cmds
endef

define $(package)_stage_cmds
  mkdir -p $($(package)_staging_prefix_dir)/share/$($(package)_install_dirname) && \
  cp $($(package)_source) $($(package)_staging_prefix_dir)/share/$($(package)_install_dirname)/$($(package)_install_filename)
endef
