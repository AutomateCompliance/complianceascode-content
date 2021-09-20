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
CMAKE_BINARY_DIR = /home/chase/_work/complianceascode-content/complianceascode-content/build

# Utility rule file for generate-internal-fedora-blueprint-fixes.xml.

# Include the progress variables for this target.
include fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/progress.make

fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml: fedora/blueprint-fixes.xml


fedora/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[fedora-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/fedora && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/fedora/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/fedora/fixes/blueprint

generate-internal-fedora-blueprint-fixes.xml: fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml
generate-internal-fedora-blueprint-fixes.xml: fedora/blueprint-fixes.xml
generate-internal-fedora-blueprint-fixes.xml: fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/build.make

.PHONY : generate-internal-fedora-blueprint-fixes.xml

# Rule to build all files generated by this target.
fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/build: generate-internal-fedora-blueprint-fixes.xml

.PHONY : fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/build

fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/fedora && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/cmake_clean.cmake
.PHONY : fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/clean

fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/fedora /home/chase/_work/complianceascode-content/complianceascode-content/build /home/chase/_work/complianceascode-content/complianceascode-content/build/fedora /home/chase/_work/complianceascode-content/complianceascode-content/build/fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fedora/CMakeFiles/generate-internal-fedora-blueprint-fixes.xml.dir/depend
