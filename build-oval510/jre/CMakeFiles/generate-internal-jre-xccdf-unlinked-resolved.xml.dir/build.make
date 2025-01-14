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

# Utility rule file for generate-internal-jre-xccdf-unlinked-resolved.xml.

# Include the progress variables for this target.
include jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/progress.make

jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml: jre/xccdf-unlinked-resolved.xml


jre/xccdf-unlinked-resolved.xml: jre/shorthand.xml
jre/xccdf-unlinked-resolved.xml: ../products/jre/transforms/shorthand2xccdf.xslt
jre/xccdf-unlinked-resolved.xml: ../products/jre/transforms/constants.xslt
jre/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[jre-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/jre/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-resolved.xml

jre/shorthand.xml: bash-remediation-functions.xml
jre/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
jre/shorthand.xml: jre/profiles
jre/shorthand.xml: jre/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[jre-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/jre/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/shorthand.xml

jre/profiles: ../products/jre/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[jre-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/jre/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/profiles/{name}.profile

jre/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[jre-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/checks/sce/metadata.json

generate-internal-jre-xccdf-unlinked-resolved.xml: jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml
generate-internal-jre-xccdf-unlinked-resolved.xml: jre/xccdf-unlinked-resolved.xml
generate-internal-jre-xccdf-unlinked-resolved.xml: jre/shorthand.xml
generate-internal-jre-xccdf-unlinked-resolved.xml: jre/profiles
generate-internal-jre-xccdf-unlinked-resolved.xml: jre/checks/sce/metadata.json
generate-internal-jre-xccdf-unlinked-resolved.xml: jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/build.make

.PHONY : generate-internal-jre-xccdf-unlinked-resolved.xml

# Rule to build all files generated by this target.
jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/build: generate-internal-jre-xccdf-unlinked-resolved.xml

.PHONY : jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/build

jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/cmake_clean.cmake
.PHONY : jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/clean

jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/jre /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : jre/CMakeFiles/generate-internal-jre-xccdf-unlinked-resolved.xml.dir/depend

