##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=utf
ConfigurationName      :=Debug
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
WorkspacePath          := "/home/shisu/.codelite/sos"
ProjectPath            := "/home/shisu/.codelite/sos/utf"
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
MakeDirCommand         :=mkdir -p
CmpOptions             := -pg -g -Wall -fprofile-arcs -ftest-coverage $(Preprocessors)
LinkOptions            :=  -fprofile-arcs -ftest-coverage -pg
IncludePath            :=  "$(IncludeSwitch)." "$(IncludeSwitch)." "$(IncludeSwitch)include" 
RcIncludePath          :=
Libs                   :=$(LibrarySwitch)sos_container $(LibrarySwitch)sos_communicator 
LibPath                := "$(LibraryPathSwitch)." "$(LibraryPathSwitch)../container/Debug" "$(LibraryPathSwitch)../communicator/Debug" 


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects=$(IntermediateDirectory)/src_utf$(ObjectSuffix) $(IntermediateDirectory)/src_mock$(ObjectSuffix) 

##
## Main Build Targets 
##
all: $(OutputFile)

$(OutputFile): makeDirStep $(Objects)
	@$(MakeDirCommand) $(@D)
	$(LinkerName) $(OutputSwitch)$(OutputFile) $(Objects) $(LibPath) $(Libs) $(LinkOptions)

makeDirStep:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_utf$(ObjectSuffix): src/utf.c $(IntermediateDirectory)/src_utf$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "/home/shisu/.codelite/sos/utf/src/utf.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_utf$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_utf$(DependSuffix): src/utf.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/src_utf$(ObjectSuffix) -MF$(IntermediateDirectory)/src_utf$(DependSuffix) -MM "/home/shisu/.codelite/sos/utf/src/utf.c"

$(IntermediateDirectory)/src_utf$(PreprocessSuffix): src/utf.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_utf$(PreprocessSuffix) "/home/shisu/.codelite/sos/utf/src/utf.c"

$(IntermediateDirectory)/src_mock$(ObjectSuffix): src/mock.c $(IntermediateDirectory)/src_mock$(DependSuffix)
	$(C_CompilerName) $(SourceSwitch) "/home/shisu/.codelite/sos/utf/src/mock.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/src_mock$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_mock$(DependSuffix): src/mock.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/src_mock$(ObjectSuffix) -MF$(IntermediateDirectory)/src_mock$(DependSuffix) -MM "/home/shisu/.codelite/sos/utf/src/mock.c"

$(IntermediateDirectory)/src_mock$(PreprocessSuffix): src/mock.c
	@$(C_CompilerName) $(CmpOptions) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_mock$(PreprocessSuffix) "/home/shisu/.codelite/sos/utf/src/mock.c"


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


