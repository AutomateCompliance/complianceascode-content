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

# Utility rule file for generate-internal-vsel-ocil-unlinked.xml.

# Include the progress variables for this target.
include vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/progress.make

vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml: vsel/ocil-unlinked.xml


vsel/ocil-unlinked.xml: vsel/xccdf-unlinked-resolved.xml
vsel/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[vsel-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ocil-unlinked.xml

vsel/xccdf-unlinked-resolved.xml: vsel/shorthand.xml
vsel/xccdf-unlinked-resolved.xml: ../products/vsel/transforms/shorthand2xccdf.xslt
vsel/xccdf-unlinked-resolved.xml: ../products/vsel/transforms/constants.xslt
vsel/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[vsel-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml

vsel/shorthand.xml: bash-remediation-functions.xml
vsel/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
vsel/shorthand.xml: vsel/profiles
vsel/shorthand.xml: vsel/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[vsel-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/shorthand.xml

vsel/profiles: ../products/vsel/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[vsel-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/profiles/{name}.profile

vsel/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[vsel-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/checks/sce/metadata.json

generate-internal-vsel-ocil-unlinked.xml: vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml
generate-internal-vsel-ocil-unlinked.xml: vsel/ocil-unlinked.xml
generate-internal-vsel-ocil-unlinked.xml: vsel/xccdf-unlinked-resolved.xml
generate-internal-vsel-ocil-unlinked.xml: vsel/shorthand.xml
generate-internal-vsel-ocil-unlinked.xml: vsel/profiles
generate-internal-vsel-ocil-unlinked.xml: vsel/checks/sce/metadata.json
generate-internal-vsel-ocil-unlinked.xml: vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/build.make

.PHONY : generate-internal-vsel-ocil-unlinked.xml

# Rule to build all files generated by this target.
vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/build: generate-internal-vsel-ocil-unlinked.xml

.PHONY : vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/build

vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/cmake_clean.cmake
.PHONY : vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/clean

vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vsel/CMakeFiles/generate-internal-vsel-ocil-unlinked.xml.dir/depend

