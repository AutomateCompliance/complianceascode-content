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

# Utility rule file for generate-internal-rhv4-puppet-all-fixes.

# Include the progress variables for this target.
include rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/progress.make

rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes: rhv4/fixes/puppet


rhv4/fixes/puppet: ../build-scripts/combine_remediations.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[rhv4-content] collecting all puppet fixes"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhv4 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_remediations.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhv4/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhv4/product.yml --remediation-type puppet --output-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhv4/fixes/puppet /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhv4/fixes_from_templates/shared/puppet /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhv4/fixes_from_templates/puppet

generate-internal-rhv4-puppet-all-fixes: rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes
generate-internal-rhv4-puppet-all-fixes: rhv4/fixes/puppet
generate-internal-rhv4-puppet-all-fixes: rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/build.make

.PHONY : generate-internal-rhv4-puppet-all-fixes

# Rule to build all files generated by this target.
rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/build: generate-internal-rhv4-puppet-all-fixes

.PHONY : rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/build

rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhv4 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/cmake_clean.cmake
.PHONY : rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/clean

rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/rhv4 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhv4 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhv4/CMakeFiles/generate-internal-rhv4-puppet-all-fixes.dir/depend

