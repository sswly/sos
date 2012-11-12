##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=communicator
ConfigurationName      :=Debug
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
WorkspacePath          := "/home/shisu/.codelite/sos"
ProjectPath            := "/home/shisu/.codelite/sos/communicator"
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=shisu
Date                   :=11/12/2012
CodeLitePath           :="/home/shisu/.codelite"
LinkerName             :=gcc
ArchiveTool            :=ar rcus
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
CompilerName           :=gcc
C_CompilerName         :=gcc
OutputFile             :=$(IntermediateDirectory)/libsos_$(ProjectName).so
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
MakeDirCommand         :=mkdir -p
CmpOptions             := -pg -g -Wall -fprofile-arcs -ftest-coverage $(Preprocessors)
LinkOptions            :=  -fprofile-arcs -ftest-coverage -pg
IncludePath            :=  "$(IncludeSwitch)." "$(IncludeSwitch)." "$(IncludeSwitch)include" 
RcIncludePath          :=
Libs                   :=$(LibrarySwitch)sos_container 
LibPath                := "$(LibraryPathSwitch)." "$(LibraryPathSwitch)../container/Debug" 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/src_bus$(ObjectSuffix) $(IntermediateDirectory)/test_test_bus$(ObjectSuffix) 

##
## Main Build Targets 
##
all: $(OutputFile)

$(OutputFile): makeDirStep $(Objects)
	@$(MakeDirCommand) $(@D)
	$(SharedObjectLinkerName) $(OutputSwitch)$(OutputFile) $(Objects) $(LibPath) $(Libs) $(LinkOptions)

makeDirStep:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_bus$(ObjectSuffix): src/bus.c $(IntermediateDirectory)/src_bus$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "/home/shisu/.codelite/sos/communicator/src/bus.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_bus$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_bus$(DependSuffix): src/bus.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/src_bus$(ObjectSuffix) -MF$(IntermediateDirectory)/src_bus$(DependSuffix) -MM "/home/shisu/.codelite/sos/communicator/src/bus.c"

$(IntermediateDirectory)/src_bus$(PreprocessSuffix): src/bus.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_bus$(PreprocessSuffix) "/home/shisu/.codelite/sos/communicator/src/bus.c"

$(IntermediateDirectory)/test_test_bus$(ObjectSuffix): test/test_bus.c $(IntermediateDirectory)/test_test_bus$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "/home/shisu/.codelite/sos/communicator/test/test_bus.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/test_test_bus$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_test_bus$(DependSuffix): test/test_bus.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/test_test_bus$(ObjectSuffix) -MF$(IntermediateDirectory)/test_test_bus$(DependSuffix) -MM "/home/shisu/.codelite/sos/communicator/test/test_bus.c"

$(IntermediateDirectory)/test_test_bus$(PreprocessSuffix): test/test_bus.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_test_bus$(PreprocessSuffix) "/home/shisu/.codelite/sos/communicator/test/test_bus.c"


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


