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
CMAKE_SOURCE_DIR = /home/chase/_work/complianceascode-content/complianceascode-content

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510

# Utility rule file for generate-ssg-tables-vsel-all.

# Include the progress variables for this target.
include vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/progress.make

vsel/CMakeFiles/generate-ssg-tables-vsel-all: tables/tables-vsel-all.html


tables/tables-vsel-all.html:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../tables/tables-vsel-all.html"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/tables
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/utils/gen_tables.py --build-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output-type html --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/tables/tables-vsel-all.html vsel

generate-ssg-tables-vsel-all: vsel/CMakeFiles/generate-ssg-tables-vsel-all
generate-ssg-tables-vsel-all: tables/tables-vsel-all.html
generate-ssg-tables-vsel-all: vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/build.make

.PHONY : generate-ssg-tables-vsel-all

# Rule to build all files generated by this target.
vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/build: generate-ssg-tables-vsel-all

.PHONY : vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/build

vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-tables-vsel-all.dir/cmake_clean.cmake
.PHONY : vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/clean

vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vsel/CMakeFiles/generate-ssg-tables-vsel-all.dir/depend

