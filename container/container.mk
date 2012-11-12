##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=container
ConfigurationName      :=Debug
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
WorkspacePath          := "/home/shisu/.codelite/sos"
ProjectPath            := "/home/shisu/.codelite/sos/container"
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
Libs                   :=
LibPath                := "$(LibraryPathSwitch)." 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/src_fix_queue$(ObjectSuffix) $(IntermediateDirectory)/src_fix_map$(ObjectSuffix) $(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix) $(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix) 

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
$(IntermediateDirectory)/src_fix_queue$(ObjectSuffix): src/fix_queue.c $(IntermediateDirectory)/src_fix_queue$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "/home/shisu/.codelite/sos/container/src/fix_queue.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_fix_queue$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_fix_queue$(DependSuffix): src/fix_queue.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/src_fix_queue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_fix_queue$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/src/fix_queue.c"

$(IntermediateDirectory)/src_fix_queue$(PreprocessSuffix): src/fix_queue.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_fix_queue$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/src/fix_queue.c"

$(IntermediateDirectory)/src_fix_map$(ObjectSuffix): src/fix_map.c $(IntermediateDirectory)/src_fix_map$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "/home/shisu/.codelite/sos/container/src/fix_map.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_fix_map$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_fix_map$(DependSuffix): src/fix_map.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/src_fix_map$(ObjectSuffix) -MF$(IntermediateDirectory)/src_fix_map$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/src/fix_map.c"

$(IntermediateDirectory)/src_fix_map$(PreprocessSuffix): src/fix_map.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_fix_map$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/src/fix_map.c"

$(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix): test/test_fix_queue.c $(IntermediateDirectory)/test_test_fix_queue$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "/home/shisu/.codelite/sos/container/test/test_fix_queue.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_test_fix_queue$(DependSuffix): test/test_fix_queue.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/test_test_fix_queue$(ObjectSuffix) -MF$(IntermediateDirectory)/test_test_fix_queue$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/test/test_fix_queue.c"

$(IntermediateDirectory)/test_test_fix_queue$(PreprocessSuffix): test/test_fix_queue.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_test_fix_queue$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/test/test_fix_queue.c"

$(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix): test/test_fix_map.c $(IntermediateDirectory)/test_test_fix_map$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "/home/shisu/.codelite/sos/container/test/test_fix_map.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/test_test_fix_map$(DependSuffix): test/test_fix_map.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/test_test_fix_map$(ObjectSuffix) -MF$(IntermediateDirectory)/test_test_fix_map$(DependSuffix) -MM "/home/shisu/.codelite/sos/container/test/test_fix_map.c"

$(IntermediateDirectory)/test_test_fix_map$(PreprocessSuffix): test/test_fix_map.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/test_test_fix_map$(PreprocessSuffix) "/home/shisu/.codelite/sos/container/test/test_fix_map.c"


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
	$(RM) $(OutputFile)


