##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=utf
ConfigurationName      :=Debug
WorkspacePath          := "/home/shisu/.codelite/sos"
ProjectPath            := "/home/shisu/.codelite/sos/utf"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=shisu
Date                   :=11/13/2012
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="/home/shisu/.codelite/sos/utf/utf.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -fprofile-arcs -ftest-coverage -pg
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sos_container $(LibrarySwitch)sos_communicator 
ArLibs                 :=  "sos_container" "sos_communicator" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)../container/Debug $(LibraryPathSwitch)../communicator/Debug 

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
Objects=$(IntermediateDirectory)/src_utf$(ObjectSuffix) $(IntermediateDirectory)/src_mock$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_utf$(ObjectSuffix): src/utf.c $(IntermediateDirectory)/src_utf$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/utf/src/utf.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_utf$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_utf$(DependSuffix): src/utf.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_utf$(ObjectSuffix) -MF$(IntermediateDirectory)/src_utf$(DependSuffix) -MM "/home/shisu/.codelite/sos/utf/src/utf.c"

$(IntermediateDirectory)/src_utf$(PreprocessSuffix): src/utf.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_utf$(PreprocessSuffix) "/home/shisu/.codelite/sos/utf/src/utf.c"

$(IntermediateDirectory)/src_mock$(ObjectSuffix): src/mock.c $(IntermediateDirectory)/src_mock$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/utf/src/mock.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_mock$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_mock$(DependSuffix): src/mock.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_mock$(ObjectSuffix) -MF$(IntermediateDirectory)/src_mock$(DependSuffix) -MM "/home/shisu/.codelite/sos/utf/src/mock.c"

$(IntermediateDirectory)/src_mock$(PreprocessSuffix): src/mock.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_mock$(PreprocessSuffix) "/home/shisu/.codelite/sos/utf/src/mock.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/src_utf$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_utf$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_utf$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_mock$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_mock$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_mock$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "/home/shisu/.codelite/sos/.build-debug/utf"


