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

# Utility rule file for generate-internal-opensuse-oval-unlinked.xml.

# Include the progress variables for this target.
include opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/progress.make

opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml: opensuse/oval-unlinked.xml


opensuse/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[opensuse-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/oval-unlinked.xml

generate-internal-opensuse-oval-unlinked.xml: opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml
generate-internal-opensuse-oval-unlinked.xml: opensuse/oval-unlinked.xml
generate-internal-opensuse-oval-unlinked.xml: opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/build.make

.PHONY : generate-internal-opensuse-oval-unlinked.xml

# Rule to build all files generated by this target.
opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/build: generate-internal-opensuse-oval-unlinked.xml

.PHONY : opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/build

opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/cmake_clean.cmake
.PHONY : opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/clean

opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opensuse/CMakeFiles/generate-internal-opensuse-oval-unlinked.xml.dir/depend

