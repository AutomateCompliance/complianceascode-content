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

# Utility rule file for generate-internal-sle15-xccdf-unlinked-resolved.xml.

# Include the progress variables for this target.
include sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/progress.make

sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml: sle15/xccdf-unlinked-resolved.xml


sle15/xccdf-unlinked-resolved.xml: sle15/shorthand.xml
sle15/xccdf-unlinked-resolved.xml: ../products/sle15/transforms/shorthand2xccdf.xslt
sle15/xccdf-unlinked-resolved.xml: ../products/sle15/transforms/constants.xslt
sle15/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
sle15/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-sle15-v1r2-xccdf-manual.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[sle15-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/sle15/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/add_stig_references.py --disa-stig /home/chase/_work/complianceascode-content/complianceascode-content/shared/references/disa-stig-sle15-v1r2-xccdf-manual.xml --unlinked-xccdf /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/xccdf-unlinked-resolved.xml

sle15/shorthand.xml: bash-remediation-functions.xml
sle15/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
sle15/shorthand.xml: sle15/profiles
sle15/shorthand.xml: sle15/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[sle15-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/sle15/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/shorthand.xml

sle15/profiles: ../products/sle15/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[sle15-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/sle15/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/profiles/{name}.profile

sle15/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[sle15-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/checks/sce/metadata.json

generate-internal-sle15-xccdf-unlinked-resolved.xml: sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml
generate-internal-sle15-xccdf-unlinked-resolved.xml: sle15/xccdf-unlinked-resolved.xml
generate-internal-sle15-xccdf-unlinked-resolved.xml: sle15/shorthand.xml
generate-internal-sle15-xccdf-unlinked-resolved.xml: sle15/profiles
generate-internal-sle15-xccdf-unlinked-resolved.xml: sle15/checks/sce/metadata.json
generate-internal-sle15-xccdf-unlinked-resolved.xml: sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/build.make

.PHONY : generate-internal-sle15-xccdf-unlinked-resolved.xml

# Rule to build all files generated by this target.
sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/build: generate-internal-sle15-xccdf-unlinked-resolved.xml

.PHONY : sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/build

sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/cmake_clean.cmake
.PHONY : sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/clean

sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/sle15 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sle15/CMakeFiles/generate-internal-sle15-xccdf-unlinked-resolved.xml.dir/depend

