# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/build

# Include any dependencies generated for this target.
include CMakeFiles/main.out.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.out.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.out.dir/flags.make

CMakeFiles/main.out.dir/main.cpp.o: CMakeFiles/main.out.dir/flags.make
CMakeFiles/main.out.dir/main.cpp.o: /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/main.cpp
CMakeFiles/main.out.dir/main.cpp.o: CMakeFiles/main.out.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.out.dir/main.cpp.o"
	/opt/homebrew/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.out.dir/main.cpp.o -MF CMakeFiles/main.out.dir/main.cpp.o.d -o CMakeFiles/main.out.dir/main.cpp.o -c /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/main.cpp

CMakeFiles/main.out.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.out.dir/main.cpp.i"
	/opt/homebrew/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/main.cpp > CMakeFiles/main.out.dir/main.cpp.i

CMakeFiles/main.out.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.out.dir/main.cpp.s"
	/opt/homebrew/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/main.cpp -o CMakeFiles/main.out.dir/main.cpp.s

CMakeFiles/main.out.dir/processing.cpp.o: CMakeFiles/main.out.dir/flags.make
CMakeFiles/main.out.dir/processing.cpp.o: /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/processing.cpp
CMakeFiles/main.out.dir/processing.cpp.o: CMakeFiles/main.out.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.out.dir/processing.cpp.o"
	/opt/homebrew/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.out.dir/processing.cpp.o -MF CMakeFiles/main.out.dir/processing.cpp.o.d -o CMakeFiles/main.out.dir/processing.cpp.o -c /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/processing.cpp

CMakeFiles/main.out.dir/processing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.out.dir/processing.cpp.i"
	/opt/homebrew/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/processing.cpp > CMakeFiles/main.out.dir/processing.cpp.i

CMakeFiles/main.out.dir/processing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.out.dir/processing.cpp.s"
	/opt/homebrew/opt/llvm/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/processing.cpp -o CMakeFiles/main.out.dir/processing.cpp.s

# Object files for target main.out
main_out_OBJECTS = \
"CMakeFiles/main.out.dir/main.cpp.o" \
"CMakeFiles/main.out.dir/processing.cpp.o"

# External object files for target main.out
main_out_EXTERNAL_OBJECTS =

main.out: CMakeFiles/main.out.dir/main.cpp.o
main.out: CMakeFiles/main.out.dir/processing.cpp.o
main.out: CMakeFiles/main.out.dir/build.make
main.out: /opt/homebrew/lib/libopencv_calib3d.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_core.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_dnn.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_features2d.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_flann.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_gapi.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_highgui.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_imgcodecs.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_imgproc.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_ml.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_objdetect.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_photo.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_stitching.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_video.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_videoio.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_alphamat.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_aruco.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_bgsegm.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_bioinspired.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_ccalib.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_datasets.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_dnn_objdetect.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_dnn_superres.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_dpm.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_face.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_freetype.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_fuzzy.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_hfs.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_img_hash.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_intensity_transform.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_line_descriptor.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_mcc.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_optflow.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_phase_unwrapping.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_plot.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_quality.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_rapid.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_reg.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_rgbd.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_saliency.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_sfm.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_shape.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_stereo.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_structured_light.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_superres.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_surface_matching.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_text.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_tracking.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_videostab.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_viz.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_wechat_qrcode.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_xfeatures2d.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_ximgproc.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_xobjdetect.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_xphoto.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_shape.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_highgui.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_datasets.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_plot.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_text.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_ml.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_phase_unwrapping.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_optflow.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_ximgproc.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_video.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_videoio.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_imgcodecs.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_objdetect.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_calib3d.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_dnn.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_features2d.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_flann.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_photo.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_imgproc.4.8.1.dylib
main.out: /opt/homebrew/lib/libopencv_core.4.8.1.dylib
main.out: CMakeFiles/main.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable main.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.out.dir/build: main.out
.PHONY : CMakeFiles/main.out.dir/build

CMakeFiles/main.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.out.dir/clean

CMakeFiles/main.out.dir/depend:
	cd /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/build /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/build /Users/semiwag/VSCode/imageFilterProj/ImageProcessing/src/build/CMakeFiles/main.out.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/main.out.dir/depend

