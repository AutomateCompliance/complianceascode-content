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

# Utility rule file for generate-internal-vsel-blueprint-all-fixes.

# Include the progress variables for this target.
include vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/progress.make

vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes: vsel/fixes/blueprint


vsel/fixes/blueprint: ../build-scripts/combine_remediations.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[vsel-content] collecting all blueprint fixes"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_remediations.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/product.yml --remediation-type blueprint --output-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes/blueprint /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes_from_templates/shared/blueprint /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes_from_templates/blueprint

generate-internal-vsel-blueprint-all-fixes: vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes
generate-internal-vsel-blueprint-all-fixes: vsel/fixes/blueprint
generate-internal-vsel-blueprint-all-fixes: vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/build.make

.PHONY : generate-internal-vsel-blueprint-all-fixes

# Rule to build all files generated by this target.
vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/build: generate-internal-vsel-blueprint-all-fixes

.PHONY : vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/build

vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/cmake_clean.cmake
.PHONY : vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/clean

vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vsel/CMakeFiles/generate-internal-vsel-blueprint-all-fixes.dir/depend

