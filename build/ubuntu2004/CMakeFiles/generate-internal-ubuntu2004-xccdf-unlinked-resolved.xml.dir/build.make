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
CMAKE_BINARY_DIR = /home/chase/_work/complianceascode-content/complianceascode-content/build

# Utility rule file for generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.

# Include the progress variables for this target.
include ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/progress.make

ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml: ubuntu2004/xccdf-unlinked-resolved.xml


ubuntu2004/xccdf-unlinked-resolved.xml: ubuntu2004/shorthand.xml
ubuntu2004/xccdf-unlinked-resolved.xml: ../products/ubuntu2004/transforms/shorthand2xccdf.xslt
ubuntu2004/xccdf-unlinked-resolved.xml: ../products/ubuntu2004/transforms/constants.xslt
ubuntu2004/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[ubuntu2004-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/xccdf-unlinked-resolved.xml

ubuntu2004/shorthand.xml: bash-remediation-functions.xml
ubuntu2004/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
ubuntu2004/shorthand.xml: ubuntu2004/profiles
ubuntu2004/shorthand.xml: ubuntu2004/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[ubuntu2004-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/shorthand.xml

ubuntu2004/profiles: ../products/ubuntu2004/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[ubuntu2004-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/profiles/{name}.profile

ubuntu2004/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[ubuntu2004-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/checks/sce/metadata.json

generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml: ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml
generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml: ubuntu2004/xccdf-unlinked-resolved.xml
generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml: ubuntu2004/shorthand.xml
generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml: ubuntu2004/profiles
generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml: ubuntu2004/checks/sce/metadata.json
generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml: ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/build.make

.PHONY : generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml

# Rule to build all files generated by this target.
ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/build: generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml

.PHONY : ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/build

ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/cmake_clean.cmake
.PHONY : ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/clean

ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004 /home/chase/_work/complianceascode-content/complianceascode-content/build /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004 /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ubuntu2004/CMakeFiles/generate-internal-ubuntu2004-xccdf-unlinked-resolved.xml.dir/depend
