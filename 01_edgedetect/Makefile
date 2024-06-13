NAME = SCVerify_EdgeDetect
BINDIR = ./bin

ifndef MGC_HOME
$(error - Environment variable MGC_HOME must be defined)
endif

CATAPULT_HOME = $(MGC_HOME)

CXXFLAGS += -g -o3 -std=c++11 -Wall -Wno-unknown-pragmas -Wno-unused-variable -Wno-unused-label

CXX := $(CATAPULT_HOME)/bin/g++

#LD_LIBRARY_PATH := $(if $(LD_LIBRARY_PATH),$(LD_LIBRARY_PATH):$(CATAPULT_HOME)/lib:$(CATAPULT_HOME)/shared/lib,$(CATAPULT_HOME)/lib:$(CATAPULT_HOME)/shared/lib)

SOURCE_FILE := ./bmpUtil/src/bmp_io.cpp
SOURCE_FILE += ./hls_c/src/EdgeDetect_tb.cpp

INCLUDE_DIR := -I./bmpUtil/inc/
INCLUDE_DIR += -I./cmodel/inc/
INCLUDE_DIR += -I./hls_c/inc/

INCDIRS :=   $(INCLUDE_DIR)
INCDIRS += -I$(CATAPULT_HOME)/shared/include

CPPFLAGS += $(INCDIRS)

BIN = $(BINDIR)/$(NAME).exe

$(BIN): 
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(SOURCE_FILE) -o $@ 

.PHONY: clean $(BIN)
clean:
	@rm -f $(BIN)

