# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jathushan/Desktop/VascuSynth/Source

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jathushan/Desktop/VascuSynth/Build

# Include any dependencies generated for this target.
include CMakeFiles/VascuSynth.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/VascuSynth.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VascuSynth.dir/flags.make

CMakeFiles/VascuSynth.dir/VascuSynth.o: CMakeFiles/VascuSynth.dir/flags.make
CMakeFiles/VascuSynth.dir/VascuSynth.o: /home/jathushan/Desktop/VascuSynth/Source/VascuSynth.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jathushan/Desktop/VascuSynth/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VascuSynth.dir/VascuSynth.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VascuSynth.dir/VascuSynth.o -c /home/jathushan/Desktop/VascuSynth/Source/VascuSynth.cpp

CMakeFiles/VascuSynth.dir/VascuSynth.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VascuSynth.dir/VascuSynth.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jathushan/Desktop/VascuSynth/Source/VascuSynth.cpp > CMakeFiles/VascuSynth.dir/VascuSynth.i

CMakeFiles/VascuSynth.dir/VascuSynth.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VascuSynth.dir/VascuSynth.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jathushan/Desktop/VascuSynth/Source/VascuSynth.cpp -o CMakeFiles/VascuSynth.dir/VascuSynth.s

CMakeFiles/VascuSynth.dir/SupplyMap.o: CMakeFiles/VascuSynth.dir/flags.make
CMakeFiles/VascuSynth.dir/SupplyMap.o: /home/jathushan/Desktop/VascuSynth/Source/SupplyMap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jathushan/Desktop/VascuSynth/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VascuSynth.dir/SupplyMap.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VascuSynth.dir/SupplyMap.o -c /home/jathushan/Desktop/VascuSynth/Source/SupplyMap.cpp

CMakeFiles/VascuSynth.dir/SupplyMap.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VascuSynth.dir/SupplyMap.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jathushan/Desktop/VascuSynth/Source/SupplyMap.cpp > CMakeFiles/VascuSynth.dir/SupplyMap.i

CMakeFiles/VascuSynth.dir/SupplyMap.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VascuSynth.dir/SupplyMap.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jathushan/Desktop/VascuSynth/Source/SupplyMap.cpp -o CMakeFiles/VascuSynth.dir/SupplyMap.s

CMakeFiles/VascuSynth.dir/OxygenationMap.o: CMakeFiles/VascuSynth.dir/flags.make
CMakeFiles/VascuSynth.dir/OxygenationMap.o: /home/jathushan/Desktop/VascuSynth/Source/OxygenationMap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jathushan/Desktop/VascuSynth/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/VascuSynth.dir/OxygenationMap.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VascuSynth.dir/OxygenationMap.o -c /home/jathushan/Desktop/VascuSynth/Source/OxygenationMap.cpp

CMakeFiles/VascuSynth.dir/OxygenationMap.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VascuSynth.dir/OxygenationMap.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jathushan/Desktop/VascuSynth/Source/OxygenationMap.cpp > CMakeFiles/VascuSynth.dir/OxygenationMap.i

CMakeFiles/VascuSynth.dir/OxygenationMap.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VascuSynth.dir/OxygenationMap.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jathushan/Desktop/VascuSynth/Source/OxygenationMap.cpp -o CMakeFiles/VascuSynth.dir/OxygenationMap.s

CMakeFiles/VascuSynth.dir/NodeTable.o: CMakeFiles/VascuSynth.dir/flags.make
CMakeFiles/VascuSynth.dir/NodeTable.o: /home/jathushan/Desktop/VascuSynth/Source/NodeTable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jathushan/Desktop/VascuSynth/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/VascuSynth.dir/NodeTable.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VascuSynth.dir/NodeTable.o -c /home/jathushan/Desktop/VascuSynth/Source/NodeTable.cpp

CMakeFiles/VascuSynth.dir/NodeTable.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VascuSynth.dir/NodeTable.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jathushan/Desktop/VascuSynth/Source/NodeTable.cpp > CMakeFiles/VascuSynth.dir/NodeTable.i

CMakeFiles/VascuSynth.dir/NodeTable.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VascuSynth.dir/NodeTable.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jathushan/Desktop/VascuSynth/Source/NodeTable.cpp -o CMakeFiles/VascuSynth.dir/NodeTable.s

CMakeFiles/VascuSynth.dir/VascularTree.o: CMakeFiles/VascuSynth.dir/flags.make
CMakeFiles/VascuSynth.dir/VascularTree.o: /home/jathushan/Desktop/VascuSynth/Source/VascularTree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jathushan/Desktop/VascuSynth/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/VascuSynth.dir/VascularTree.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VascuSynth.dir/VascularTree.o -c /home/jathushan/Desktop/VascuSynth/Source/VascularTree.cpp

CMakeFiles/VascuSynth.dir/VascularTree.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VascuSynth.dir/VascularTree.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jathushan/Desktop/VascuSynth/Source/VascularTree.cpp > CMakeFiles/VascuSynth.dir/VascularTree.i

CMakeFiles/VascuSynth.dir/VascularTree.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VascuSynth.dir/VascularTree.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jathushan/Desktop/VascuSynth/Source/VascularTree.cpp -o CMakeFiles/VascuSynth.dir/VascularTree.s

CMakeFiles/VascuSynth.dir/TreeDrawer.o: CMakeFiles/VascuSynth.dir/flags.make
CMakeFiles/VascuSynth.dir/TreeDrawer.o: /home/jathushan/Desktop/VascuSynth/Source/TreeDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jathushan/Desktop/VascuSynth/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/VascuSynth.dir/TreeDrawer.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VascuSynth.dir/TreeDrawer.o -c /home/jathushan/Desktop/VascuSynth/Source/TreeDrawer.cpp

CMakeFiles/VascuSynth.dir/TreeDrawer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VascuSynth.dir/TreeDrawer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jathushan/Desktop/VascuSynth/Source/TreeDrawer.cpp > CMakeFiles/VascuSynth.dir/TreeDrawer.i

CMakeFiles/VascuSynth.dir/TreeDrawer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VascuSynth.dir/TreeDrawer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jathushan/Desktop/VascuSynth/Source/TreeDrawer.cpp -o CMakeFiles/VascuSynth.dir/TreeDrawer.s

# Object files for target VascuSynth
VascuSynth_OBJECTS = \
"CMakeFiles/VascuSynth.dir/VascuSynth.o" \
"CMakeFiles/VascuSynth.dir/SupplyMap.o" \
"CMakeFiles/VascuSynth.dir/OxygenationMap.o" \
"CMakeFiles/VascuSynth.dir/NodeTable.o" \
"CMakeFiles/VascuSynth.dir/VascularTree.o" \
"CMakeFiles/VascuSynth.dir/TreeDrawer.o"

# External object files for target VascuSynth
VascuSynth_EXTERNAL_OBJECTS =

VascuSynth: CMakeFiles/VascuSynth.dir/VascuSynth.o
VascuSynth: CMakeFiles/VascuSynth.dir/SupplyMap.o
VascuSynth: CMakeFiles/VascuSynth.dir/OxygenationMap.o
VascuSynth: CMakeFiles/VascuSynth.dir/NodeTable.o
VascuSynth: CMakeFiles/VascuSynth.dir/VascularTree.o
VascuSynth: CMakeFiles/VascuSynth.dir/TreeDrawer.o
VascuSynth: CMakeFiles/VascuSynth.dir/build.make
VascuSynth: /usr/local/lib/libITKLabelMap-5.3.so.1
VascuSynth: /usr/local/lib/libITKFastMarching-5.3.so.1
VascuSynth: /usr/local/lib/libITKConvolution-5.3.so.1
VascuSynth: /usr/local/lib/libITKPolynomials-5.3.so.1
VascuSynth: /usr/local/lib/libITKBiasCorrection-5.3.so.1
VascuSynth: /usr/local/lib/libITKColormap-5.3.so.1
VascuSynth: /usr/local/lib/libITKDICOMParser-5.3.so.1
VascuSynth: /usr/local/lib/libITKDeformableMesh-5.3.so.1
VascuSynth: /usr/local/lib/libITKDenoising-5.3.so.1
VascuSynth: /usr/local/lib/libITKDiffusionTensorImage-5.3.so.1
VascuSynth: /usr/local/lib/libITKPDEDeformableRegistration-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOBioRad-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOBruker-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOCSV-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOGE-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOHDF5-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOJPEG2000-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOLSM-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMINC-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMRC-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOSiemens-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOSpatialObjects-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOStimulate-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOTransformHDF5-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOTransformInsightLegacy-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOTransformMatlab-5.3.so.1
VascuSynth: /usr/local/lib/libITKKLMRegionGrowing-5.3.so.1
VascuSynth: /usr/local/lib/libITKMarkovRandomFieldsClassifiers-5.3.so.1
VascuSynth: /usr/local/lib/libITKQuadEdgeMeshFiltering-5.3.so.1
VascuSynth: /usr/local/lib/libITKRegionGrowing-5.3.so.1
VascuSynth: /usr/local/lib/libITKRegistrationMethodsv4-5.3.so.1
VascuSynth: /usr/local/lib/libITKTestKernel-5.3.so.1
VascuSynth: /usr/local/lib/libITKVTK-5.3.so.1
VascuSynth: /usr/local/lib/libITKVideoIO-5.3.so.1
VascuSynth: /usr/local/lib/libITKWatersheds-5.3.so.1
VascuSynth: /usr/local/lib/libitkopenjpeg-5.3.so.1
VascuSynth: /usr/local/lib/libitkminc2-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOIPL-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOXML-5.3.so.1
VascuSynth: /usr/local/lib/libitkhdf5_cpp-shared-5.3.so.1
VascuSynth: /usr/local/lib/libitkhdf5-shared-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOTransformBase-5.3.so.1
VascuSynth: /usr/local/lib/libITKTransformFactory-5.3.so.1
VascuSynth: /usr/local/lib/libITKImageFeature-5.3.so.1
VascuSynth: /usr/local/lib/libITKOptimizersv4-5.3.so.1
VascuSynth: /usr/local/lib/libITKOptimizers-5.3.so.1
VascuSynth: /usr/local/lib/libitklbfgs-5.3.so.1
VascuSynth: /usr/local/lib/libITKFFT-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOBMP-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOGDCM-5.3.so.1
VascuSynth: /usr/local/lib/libitkgdcmMSFF-5.3.so.1
VascuSynth: /usr/local/lib/libitkgdcmDICT-5.3.so.1
VascuSynth: /usr/local/lib/libitkgdcmIOD-5.3.so.1
VascuSynth: /usr/local/lib/libitkgdcmDSED-5.3.so.1
VascuSynth: /usr/local/lib/libitkgdcmCommon-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOGIPL-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOJPEG-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOTIFF-5.3.so.1
VascuSynth: /usr/local/lib/libitktiff-5.3.so.1
VascuSynth: /usr/local/lib/libitkjpeg-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMeshBYU-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMeshFreeSurfer-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMeshGifti-5.3.so.1
VascuSynth: /usr/local/lib/libITKgiftiio-5.3.so.1
VascuSynth: /usr/local/lib/libITKEXPAT-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMeshOBJ-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMeshOFF-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMeshVTK-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMeshBase-5.3.so.1
VascuSynth: /usr/local/lib/libITKQuadEdgeMesh-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOMeta-5.3.so.1
VascuSynth: /usr/local/lib/libITKMetaIO-5.3.so.1
VascuSynth: /usr/local/lib/libITKIONIFTI-5.3.so.1
VascuSynth: /usr/local/lib/libITKniftiio-5.3.so.1
VascuSynth: /usr/local/lib/libITKznz-5.3.so.1
VascuSynth: /usr/lib/x86_64-linux-gnu/libm.so
VascuSynth: /usr/local/lib/libITKIONRRD-5.3.so.1
VascuSynth: /usr/local/lib/libITKNrrdIO-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOPNG-5.3.so.1
VascuSynth: /usr/local/lib/libitkpng-5.3.so.1
VascuSynth: /usr/local/lib/libitkzlib-5.3.so.1.2.11.zlib-ng
VascuSynth: /usr/local/lib/libITKIOVTK-5.3.so.1
VascuSynth: /usr/local/lib/libITKIOImageBase-5.3.so.1
VascuSynth: /usr/local/lib/libITKVideoCore-5.3.so.1
VascuSynth: /usr/local/lib/libITKMathematicalMorphology-5.3.so.1
VascuSynth: /usr/local/lib/libITKStatistics-5.3.so.1
VascuSynth: /usr/local/lib/libitkNetlibSlatec-5.3.so.1
VascuSynth: /usr/local/lib/libITKSpatialObjects-5.3.so.1
VascuSynth: /usr/local/lib/libITKMesh-5.3.so.1
VascuSynth: /usr/local/lib/libITKTransform-5.3.so.1
VascuSynth: /usr/local/lib/libITKPath-5.3.so.1
VascuSynth: /usr/local/lib/libITKCommon-5.3.so.1
VascuSynth: /usr/local/lib/libitkdouble-conversion-5.3.so.1
VascuSynth: /usr/local/lib/libitksys-5.3.so.1
VascuSynth: /usr/local/lib/libITKVNLInstantiation-5.3.so.1
VascuSynth: /usr/local/lib/libitkvnl_algo-5.3.so.1
VascuSynth: /usr/local/lib/libitkvnl-5.3.so.1
VascuSynth: /usr/local/lib/libitkv3p_netlib-5.3.so.1
VascuSynth: /usr/local/lib/libitkvcl-5.3.so.1
VascuSynth: /usr/local/lib/libITKSmoothing-5.3.so.1
VascuSynth: CMakeFiles/VascuSynth.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jathushan/Desktop/VascuSynth/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable VascuSynth"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VascuSynth.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VascuSynth.dir/build: VascuSynth

.PHONY : CMakeFiles/VascuSynth.dir/build

CMakeFiles/VascuSynth.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VascuSynth.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VascuSynth.dir/clean

CMakeFiles/VascuSynth.dir/depend:
	cd /home/jathushan/Desktop/VascuSynth/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jathushan/Desktop/VascuSynth/Source /home/jathushan/Desktop/VascuSynth/Source /home/jathushan/Desktop/VascuSynth/Build /home/jathushan/Desktop/VascuSynth/Build /home/jathushan/Desktop/VascuSynth/Build/CMakeFiles/VascuSynth.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VascuSynth.dir/depend

