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

# Utility rule file for generate-internal-firefox-ignition-fixes.xml.

# Include the progress variables for this target.
include firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/progress.make

firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml: firefox/ignition-fixes.xml


firefox/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[firefox-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/fixes/ignition

generate-internal-firefox-ignition-fixes.xml: firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml
generate-internal-firefox-ignition-fixes.xml: firefox/ignition-fixes.xml
generate-internal-firefox-ignition-fixes.xml: firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/build.make

.PHONY : generate-internal-firefox-ignition-fixes.xml

# Rule to build all files generated by this target.
firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/build: generate-internal-firefox-ignition-fixes.xml

.PHONY : firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/build

firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/cmake_clean.cmake
.PHONY : firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/clean

firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : firefox/CMakeFiles/generate-internal-firefox-ignition-fixes.xml.dir/depend

