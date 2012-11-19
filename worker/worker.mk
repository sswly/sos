##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=worker
ConfigurationName      :=Debug
WorkspacePath          := "/home/shisu/.codelite/sos"
ProjectPath            := "/home/shisu/.codelite/sos/worker"
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
ObjectsFileList        :="/home/shisu/.codelite/sos/worker/worker.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
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
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/src_thread_worker$(ObjectSuffix) $(IntermediateDirectory)/src_timer$(ObjectSuffix) 

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
	@echo rebuilt > "/home/shisu/.codelite/sos/.build-debug/worker"

./Debug:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_thread_worker$(ObjectSuffix): src/thread_worker.c $(IntermediateDirectory)/src_thread_worker$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/worker/src/thread_worker.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread_worker$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_thread_worker$(DependSuffix): src/thread_worker.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_thread_worker$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread_worker$(DependSuffix) -MM "/home/shisu/.codelite/sos/worker/src/thread_worker.c"

$(IntermediateDirectory)/src_thread_worker$(PreprocessSuffix): src/thread_worker.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_thread_worker$(PreprocessSuffix) "/home/shisu/.codelite/sos/worker/src/thread_worker.c"

$(IntermediateDirectory)/src_timer$(ObjectSuffix): src/timer.c $(IntermediateDirectory)/src_timer$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/shisu/.codelite/sos/worker/src/timer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_timer$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_timer$(DependSuffix): src/timer.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_timer$(ObjectSuffix) -MF$(IntermediateDirectory)/src_timer$(DependSuffix) -MM "/home/shisu/.codelite/sos/worker/src/timer.c"

$(IntermediateDirectory)/src_timer$(PreprocessSuffix): src/timer.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_timer$(PreprocessSuffix) "/home/shisu/.codelite/sos/worker/src/timer.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/src_thread_worker$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_thread_worker$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_thread_worker$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_timer$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_timer$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_timer$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) "/home/shisu/.codelite/sos/.build-debug/worker"


