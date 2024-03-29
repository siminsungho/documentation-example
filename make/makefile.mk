###############################################################################

LIBRARY_DIR ?= ../..

###############################################################################

include $(LIBRARY_DIR)/ubinos/make/common.mk
-include $(LIBRARY_DIR)/ubinos/make/custom.mk

###############################################################################

include $(_CONFIG_DIR)/$(_CONFIG_NAME).mk

###############################################################################

config:
	$(call begin_message)
	$(_PRECMD) && mkdir -p "$(_OUTPUT_DIR)"
	$(call end_message)

menuconfig:
	$(call begin_message)
	$(call end_message)

xconfig:
	$(call begin_message)
	$(call end_message)

build:
	$(call begin_message)
	$(_PRECMD) && cd "$(LIBRARY_DIR)/documentation-example" && sphinx-build doc "$(_OUTPUT_DIR)"
	$(_PRECMD) && cd "$(LIBRARY_DIR)/documentation-example" && sphinx-build doc -W -b linkcheck "$(_OUTPUT_DIR)"
	$(call end_message)

load:
	$(call begin_message)
	$(call end_message)

reset:
	$(call begin_message)
	$(call end_message)

run:
	$(call begin_message)
	$(call end_message)

xrun:
	$(call begin_message)
	$(shell python "$(_TOOLBOX)" get_open_command_for_cmake) "$(_OUTPUT_DIR)/index.html"
	$(call end_message)

clean:
	$(call begin_message)
	$(call end_message)

cleand:
	$(call begin_message)
	$(_PRECMD) && rm -rf "$(_OUTPUT_DIR)"
	$(call end_message)

%: common-% ;

###############################################################################


