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

# Utility rule file for generate-internal-fedora-ansible-fixes.xml.

# Include the progress variables for this target.
include fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/progress.make

fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml: fedora/ansible-fixes.xml


fedora/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[fedora-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fedora && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fedora/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fedora/fixes/ansible

generate-internal-fedora-ansible-fixes.xml: fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml
generate-internal-fedora-ansible-fixes.xml: fedora/ansible-fixes.xml
generate-internal-fedora-ansible-fixes.xml: fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/build.make

.PHONY : generate-internal-fedora-ansible-fixes.xml

# Rule to build all files generated by this target.
fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/build: generate-internal-fedora-ansible-fixes.xml

.PHONY : fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/build

fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fedora && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/cmake_clean.cmake
.PHONY : fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/clean

fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/fedora /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fedora /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fedora/CMakeFiles/generate-internal-fedora-ansible-fixes.xml.dir/depend

