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

# Utility rule file for generate-internal-ubuntu1804-blueprint-fixes.xml.

# Include the progress variables for this target.
include ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/progress.make

ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml: ubuntu1804/blueprint-fixes.xml


ubuntu1804/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[ubuntu1804-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu1804/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu1804/fixes/blueprint

generate-internal-ubuntu1804-blueprint-fixes.xml: ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml
generate-internal-ubuntu1804-blueprint-fixes.xml: ubuntu1804/blueprint-fixes.xml
generate-internal-ubuntu1804-blueprint-fixes.xml: ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/build.make

.PHONY : generate-internal-ubuntu1804-blueprint-fixes.xml

# Rule to build all files generated by this target.
ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/build: generate-internal-ubuntu1804-blueprint-fixes.xml

.PHONY : ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/build

ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu1804 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/cmake_clean.cmake
.PHONY : ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/clean

ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu1804 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu1804 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ubuntu1804/CMakeFiles/generate-internal-ubuntu1804-blueprint-fixes.xml.dir/depend

