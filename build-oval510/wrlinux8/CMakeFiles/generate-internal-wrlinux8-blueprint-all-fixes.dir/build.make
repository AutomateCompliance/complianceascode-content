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

# Utility rule file for generate-internal-wrlinux8-blueprint-all-fixes.

# Include the progress variables for this target.
include wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/progress.make

wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes: wrlinux8/fixes/blueprint


wrlinux8/fixes/blueprint: ../build-scripts/combine_remediations.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[wrlinux8-content] collecting all blueprint fixes"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_remediations.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux8/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux8/product.yml --remediation-type blueprint --output-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux8/fixes/blueprint /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux8/fixes_from_templates/shared/blueprint /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux8/fixes_from_templates/blueprint

generate-internal-wrlinux8-blueprint-all-fixes: wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes
generate-internal-wrlinux8-blueprint-all-fixes: wrlinux8/fixes/blueprint
generate-internal-wrlinux8-blueprint-all-fixes: wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/build.make

.PHONY : generate-internal-wrlinux8-blueprint-all-fixes

# Rule to build all files generated by this target.
wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/build: generate-internal-wrlinux8-blueprint-all-fixes

.PHONY : wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/build

wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux8 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/cmake_clean.cmake
.PHONY : wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/clean

wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux8 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux8 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wrlinux8/CMakeFiles/generate-internal-wrlinux8-blueprint-all-fixes.dir/depend

