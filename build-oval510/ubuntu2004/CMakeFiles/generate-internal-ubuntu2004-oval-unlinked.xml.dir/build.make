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

# Utility rule file for generate-internal-ubuntu2004-oval-unlinked.xml.

# Include the progress variables for this target.
include ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/progress.make

ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml: ubuntu2004/oval-unlinked.xml


ubuntu2004/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[ubuntu2004-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/oval-unlinked.xml

generate-internal-ubuntu2004-oval-unlinked.xml: ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml
generate-internal-ubuntu2004-oval-unlinked.xml: ubuntu2004/oval-unlinked.xml
generate-internal-ubuntu2004-oval-unlinked.xml: ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/build.make

.PHONY : generate-internal-ubuntu2004-oval-unlinked.xml

# Rule to build all files generated by this target.
ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/build: generate-internal-ubuntu2004-oval-unlinked.xml

.PHONY : ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/build

ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/cmake_clean.cmake
.PHONY : ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/clean

ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-oval-unlinked.xml.dir/depend

