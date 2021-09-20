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

# Utility rule file for generate-internal-chromium-shorthand.xml.

# Include the progress variables for this target.
include chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/progress.make

chromium/CMakeFiles/generate-internal-chromium-shorthand.xml: chromium/shorthand.xml


chromium/shorthand.xml: bash-remediation-functions.xml
chromium/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
chromium/shorthand.xml: chromium/profiles
chromium/shorthand.xml: chromium/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[chromium-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/shorthand.xml

chromium/profiles: ../products/chromium/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[chromium-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/profiles/{name}.profile

chromium/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[chromium-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/checks/sce/metadata.json

generate-internal-chromium-shorthand.xml: chromium/CMakeFiles/generate-internal-chromium-shorthand.xml
generate-internal-chromium-shorthand.xml: chromium/shorthand.xml
generate-internal-chromium-shorthand.xml: chromium/profiles
generate-internal-chromium-shorthand.xml: chromium/checks/sce/metadata.json
generate-internal-chromium-shorthand.xml: chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/build.make

.PHONY : generate-internal-chromium-shorthand.xml

# Rule to build all files generated by this target.
chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/build: generate-internal-chromium-shorthand.xml

.PHONY : chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/build

chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-chromium-shorthand.xml.dir/cmake_clean.cmake
.PHONY : chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/clean

chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chromium/CMakeFiles/generate-internal-chromium-shorthand.xml.dir/depend

