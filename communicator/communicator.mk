##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=communicator
ConfigurationName      :=Debug
WorkspacePath          := "/home/shisu/.codelite/sos"
ProjectPath            := "/home/shisu/.codelite/sos/communicator"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=shisu
Date                   :=11/19/2012
CodeLitePath           :="/home/shisu/.codelite"
LinkerName             :=gcc
SharedObjectLinkerName :=gcc -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/libsos_$(ProjectName).a
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="/home/shisu/.codelite/sos/communicator/communicator.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -fprofile-arcs -ftest-coverage -pg
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := gcc
CC       := gcc
CXXFLAGS :=  -pg -g -Wall -fprofile-arcs -ftest-coverage $(Preprocessors)
CFLAGS   :=  -pg -g -Wall -fprofile-arcs -ftest-coverage $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/src_bus$(ObjectSuffix) $(IntermediateDirectory)/test_test_bus$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(IntermediateDirectory) $(OutputFile)

$(OutputFile): $(Objects)
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(AR) $(ArchiveOutputSwitch)$(OutputFile) @$(ObjectsFileList) $(ArLibs)
	@$(MakeDirCommand) "/home/shisu/.codelite/sos/.build-debug"
	@echo rebuilt > "/home/shisu/.codelite/sos/.build-debug/communicator"

./Debug:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_bus$(ObjectSuffix): src/bus.c $(IntermediateDirectory)/src_bus$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/communicator/src/bus.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_bus$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_bus$(DependSuffix): src/bus.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_bus$(ObjectSuffix) -MF$(IntermediateDirectory)/src_bus$(DependSuffix) -MM "/home/shisu/.codelite/sos/communicator/src/bus.c"

$(IntermediateDirectory)/src_bus$(PreprocessSuffix): src/bus.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_bus$(PreprocessSuffix) "/home/shisu/.codelite/sos/communicator/src/bus.c"

$(IntermediateDirectory)/test_test_bus$(ObjectSuffix): test/test_bus.c $(IntermediateDirectory)/test_test_bus$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/communicator/test/test_bus.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_test_bus$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_test_bus$(DependSuffix): test/test_bus.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_test_bus$(ObjectSuffix) -MF$(IntermediateDirectory)/test_test_bus$(DependSuffix) -MM "/home/shisu/.codelite/sos/communicator/test/test_bus.c"

$(IntermediateDirectory)/test_test_bus$(PreprocessSuffix): test/test_bus.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_test_bus$(PreprocessSuffix) "/home/shisu/.codelite/sos/communicator/test/test_bus.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/src_bus$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_bus$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_bus$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/test_test_bus$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/test_test_bus$(DependSuffix)
	$(RM) $(IntermediateDirectory)/test_test_bus$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "/home/shisu/.codelite/sos/.build-debug/communicator"


