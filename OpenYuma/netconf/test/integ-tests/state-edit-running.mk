# ----------------------------------------------------------------------------|
# Device Edit tests
EDIT_TEST_SUITE_SOURCES := $(YUMA_TEST_SUITE_COMMON)/state-data-tests-get.cpp \
                           state-edit-running.cpp \

ALL_SOURCES += $(EDIT_TEST_SUITE_SOURCES) 

ALL_EDIT_TEST_SUITE_SOURCES := $(BASE_SOURCES) $(EDIT_TEST_SUITE_SOURCES)						

test-state-edit-running: $(call ALL_OBJECTS,$(ALL_EDIT_TEST_SUITE_SOURCES)) | yuma-op
	$(MAKE_TEST)

TARGETS += test-state-edit-running
