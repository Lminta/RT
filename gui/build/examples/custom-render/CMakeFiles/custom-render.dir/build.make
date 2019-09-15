# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Users/lminta/.brew/Cellar/cmake/3.15.3/bin/cmake

# The command to remove a file.
RM = /Users/lminta/.brew/Cellar/cmake/3.15.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lminta/test/gui/KiWi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lminta/test/gui/build

# Include any dependencies generated for this target.
include examples/custom-render/CMakeFiles/custom-render.dir/depend.make

# Include the progress variables for this target.
include examples/custom-render/CMakeFiles/custom-render.dir/progress.make

# Include the compile flags for this target's objects.
include examples/custom-render/CMakeFiles/custom-render.dir/flags.make

examples/custom-render/tileset.png: /Users/lminta/test/gui/KiWi/examples/tileset/tileset.png
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/lminta/test/gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating tileset.png"
	cd /Users/lminta/test/gui/build/examples/custom-render && /Users/lminta/.brew/Cellar/cmake/3.15.3/bin/cmake -E copy /Users/lminta/test/gui/KiWi/examples/custom-render/../tileset/tileset.png /Users/lminta/test/gui/build/examples/custom-render/tileset.png

examples/custom-render/skin.png: /Users/lminta/test/gui/KiWi/examples/tileset/skin.png
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/lminta/test/gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating skin.png"
	cd /Users/lminta/test/gui/build/examples/custom-render && /Users/lminta/.brew/Cellar/cmake/3.15.3/bin/cmake -E copy /Users/lminta/test/gui/KiWi/examples/custom-render/../tileset/skin.png /Users/lminta/test/gui/build/examples/custom-render/skin.png

examples/custom-render/Fontin-Regular.ttf: /Users/lminta/test/gui/KiWi/examples/fonts/Fontin-Regular.ttf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/lminta/test/gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating Fontin-Regular.ttf"
	cd /Users/lminta/test/gui/build/examples/custom-render && /Users/lminta/.brew/Cellar/cmake/3.15.3/bin/cmake -E copy /Users/lminta/test/gui/KiWi/examples/custom-render/../fonts/Fontin-Regular.ttf /Users/lminta/test/gui/build/examples/custom-render/Fontin-Regular.ttf

examples/custom-render/CMakeFiles/custom-render.dir/custom-render.c.o: examples/custom-render/CMakeFiles/custom-render.dir/flags.make
examples/custom-render/CMakeFiles/custom-render.dir/custom-render.c.o: /Users/lminta/test/gui/KiWi/examples/custom-render/custom-render.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lminta/test/gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object examples/custom-render/CMakeFiles/custom-render.dir/custom-render.c.o"
	cd /Users/lminta/test/gui/build/examples/custom-render && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/custom-render.dir/custom-render.c.o   -c /Users/lminta/test/gui/KiWi/examples/custom-render/custom-render.c

examples/custom-render/CMakeFiles/custom-render.dir/custom-render.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/custom-render.dir/custom-render.c.i"
	cd /Users/lminta/test/gui/build/examples/custom-render && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lminta/test/gui/KiWi/examples/custom-render/custom-render.c > CMakeFiles/custom-render.dir/custom-render.c.i

examples/custom-render/CMakeFiles/custom-render.dir/custom-render.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/custom-render.dir/custom-render.c.s"
	cd /Users/lminta/test/gui/build/examples/custom-render && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lminta/test/gui/KiWi/examples/custom-render/custom-render.c -o CMakeFiles/custom-render.dir/custom-render.c.s

# Object files for target custom-render
custom__render_OBJECTS = \
"CMakeFiles/custom-render.dir/custom-render.c.o"

# External object files for target custom-render
custom__render_EXTERNAL_OBJECTS =

examples/custom-render/custom-render: examples/custom-render/CMakeFiles/custom-render.dir/custom-render.c.o
examples/custom-render/custom-render: examples/custom-render/CMakeFiles/custom-render.dir/build.make
examples/custom-render/custom-render: src/libKiWi.dylib
examples/custom-render/custom-render: /Users/lminta/.brew/lib/libSDL2main.a
examples/custom-render/custom-render: /Users/lminta/.brew/lib/libSDL2.dylib
examples/custom-render/custom-render: /Users/lminta/.brew/lib/libSDL2_image.dylib
examples/custom-render/custom-render: /Users/lminta/.brew/lib/libSDL2_ttf.dylib
examples/custom-render/custom-render: /Users/lminta/.brew/lib/libSDL2_image.dylib
examples/custom-render/custom-render: examples/custom-render/CMakeFiles/custom-render.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lminta/test/gui/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable custom-render"
	cd /Users/lminta/test/gui/build/examples/custom-render && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/custom-render.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/custom-render/CMakeFiles/custom-render.dir/build: examples/custom-render/custom-render

.PHONY : examples/custom-render/CMakeFiles/custom-render.dir/build

examples/custom-render/CMakeFiles/custom-render.dir/clean:
	cd /Users/lminta/test/gui/build/examples/custom-render && $(CMAKE_COMMAND) -P CMakeFiles/custom-render.dir/cmake_clean.cmake
.PHONY : examples/custom-render/CMakeFiles/custom-render.dir/clean

examples/custom-render/CMakeFiles/custom-render.dir/depend: examples/custom-render/tileset.png
examples/custom-render/CMakeFiles/custom-render.dir/depend: examples/custom-render/skin.png
examples/custom-render/CMakeFiles/custom-render.dir/depend: examples/custom-render/Fontin-Regular.ttf
	cd /Users/lminta/test/gui/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lminta/test/gui/KiWi /Users/lminta/test/gui/KiWi/examples/custom-render /Users/lminta/test/gui/build /Users/lminta/test/gui/build/examples/custom-render /Users/lminta/test/gui/build/examples/custom-render/CMakeFiles/custom-render.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/custom-render/CMakeFiles/custom-render.dir/depend

