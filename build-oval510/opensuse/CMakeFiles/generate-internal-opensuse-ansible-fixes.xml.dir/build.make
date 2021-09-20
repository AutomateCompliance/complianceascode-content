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

# Utility rule file for generate-internal-opensuse-ansible-fixes.xml.

# Include the progress variables for this target.
include opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/progress.make

opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml: opensuse/ansible-fixes.xml


opensuse/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[opensuse-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/fixes/ansible

generate-internal-opensuse-ansible-fixes.xml: opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml
generate-internal-opensuse-ansible-fixes.xml: opensuse/ansible-fixes.xml
generate-internal-opensuse-ansible-fixes.xml: opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/build.make

.PHONY : generate-internal-opensuse-ansible-fixes.xml

# Rule to build all files generated by this target.
opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/build: generate-internal-opensuse-ansible-fixes.xml

.PHONY : opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/build

opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/cmake_clean.cmake
.PHONY : opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/clean

opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opensuse/CMakeFiles/generate-internal-opensuse-ansible-fixes.xml.dir/depend

