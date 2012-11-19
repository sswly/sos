##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=container
ConfigurationName      :=Debug
WorkspacePath          := "/home/shisu/.codelite/sos"
ProjectPath            := "/home/shisu/.codelite/sos/container"
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
ObjectsFileList        :="/home/shisu/.codelite/sos/container/container.txt"
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
Objects=$(IntermediateDirectory)/src_fix_queue$(ObjectSuffix) $(IntermediateDirectory)/src_fix_map$(ObjectSuffix) $(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix) $(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix) $(IntermediateDirectory)/test_mock_fix_queue$(ObjectSuffix) 

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
	@echo rebuilt > "/home/shisu/.codelite/sos/.build-debug/container"

./Debug:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_fix_queue$(ObjectSuffix): src/fix_queue.c $(IntermediateDirectory)/src_fix_queue$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/container/src/fix_queue.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_fix_queue$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_fix_queue$(DependSuffix): src/fix_queue.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_fix_queue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_fix_queue$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/src/fix_queue.c"

$(IntermediateDirectory)/src_fix_queue$(PreprocessSuffix): src/fix_queue.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_fix_queue$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/src/fix_queue.c"

$(IntermediateDirectory)/src_fix_map$(ObjectSuffix): src/fix_map.c $(IntermediateDirectory)/src_fix_map$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/container/src/fix_map.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_fix_map$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_fix_map$(DependSuffix): src/fix_map.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_fix_map$(ObjectSuffix) -MF$(IntermediateDirectory)/src_fix_map$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/src/fix_map.c"

$(IntermediateDirectory)/src_fix_map$(PreprocessSuffix): src/fix_map.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_fix_map$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/src/fix_map.c"

$(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix): test/test_fix_queue.c $(IntermediateDirectory)/test_test_fix_queue$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/container/test/test_fix_queue.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_test_fix_queue$(DependSuffix): test/test_fix_queue.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix) -MF$(IntermediateDirectory)/test_test_fix_queue$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/test/test_fix_queue.c"

$(IntermediateDirectory)/test_test_fix_queue$(PreprocessSuffix): test/test_fix_queue.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_test_fix_queue$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/test/test_fix_queue.c"

$(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix): test/test_fix_map.c $(IntermediateDirectory)/test_test_fix_map$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/container/test/test_fix_map.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_test_fix_map$(DependSuffix): test/test_fix_map.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix) -MF$(IntermediateDirectory)/test_test_fix_map$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/test/test_fix_map.c"

$(IntermediateDirectory)/test_test_fix_map$(PreprocessSuffix): test/test_fix_map.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_test_fix_map$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/test/test_fix_map.c"

$(IntermediateDirectory)/test_mock_fix_queue$(ObjectSuffix): test/mock_fix_queue.c $(IntermediateDirectory)/test_mock_fix_queue$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/container/test/mock_fix_queue.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/test_mock_fix_queue$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_mock_fix_queue$(DependSuffix): test/mock_fix_queue.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/test_mock_fix_queue$(ObjectSuffix) -MF$(IntermediateDirectory)/test_mock_fix_queue$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/test/mock_fix_queue.c"

$(IntermediateDirectory)/test_mock_fix_queue$(PreprocessSuffix): test/mock_fix_queue.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_mock_fix_queue$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/test/mock_fix_queue.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/src_fix_queue$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_fix_queue$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_fix_queue$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_fix_map$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_fix_map$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_fix_map$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/test_test_fix_queue$(DependSuffix)
	$(RM) $(IntermediateDirectory)/test_test_fix_queue$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/test_test_fix_map$(DependSuffix)
	$(RM) $(IntermediateDirectory)/test_test_fix_map$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/test_mock_fix_queue$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/test_mock_fix_queue$(DependSuffix)
	$(RM) $(IntermediateDirectory)/test_mock_fix_queue$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "/home/shisu/.codelite/sos/.build-debug/container"


