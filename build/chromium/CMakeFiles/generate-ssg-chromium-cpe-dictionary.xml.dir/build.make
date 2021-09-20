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

# Utility rule file for generate-ssg-chromium-cpe-dictionary.xml.

# Include the progress variables for this target.
include chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/progress.make

chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml: ssg-chromium-cpe-dictionary.xml
chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml: ssg-chromium-cpe-oval.xml


ssg-chromium-cpe-dictionary.xml: chromium/oval-unlinked.xml
ssg-chromium-cpe-dictionary.xml: chromium/shorthand.xml
ssg-chromium-cpe-dictionary.xml: ../build-scripts/cpe_generate.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[chromium-content] generating ssg-chromium-cpe-dictionary.xml, ssg-chromium-cpe-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/cpe_generate.py --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml ssg /home/chase/_work/complianceascode-content/complianceascode-content/build /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/oval-unlinked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-chromium-cpe-dictionary.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-chromium-cpe-dictionary.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-chromium-cpe-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-chromium-cpe-oval.xml

ssg-chromium-cpe-oval.xml: ssg-chromium-cpe-dictionary.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ssg-chromium-cpe-oval.xml

chromium/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[chromium-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/oval-unlinked.xml

chromium/shorthand.xml: bash-remediation-functions.xml
chromium/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
chromium/shorthand.xml: chromium/profiles
chromium/shorthand.xml: chromium/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[chromium-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/shorthand.xml

chromium/profiles: ../products/chromium/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[chromium-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/profiles/{name}.profile

chromium/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[chromium-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/checks/sce/metadata.json

generate-ssg-chromium-cpe-dictionary.xml: chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml
generate-ssg-chromium-cpe-dictionary.xml: ssg-chromium-cpe-dictionary.xml
generate-ssg-chromium-cpe-dictionary.xml: ssg-chromium-cpe-oval.xml
generate-ssg-chromium-cpe-dictionary.xml: chromium/oval-unlinked.xml
generate-ssg-chromium-cpe-dictionary.xml: chromium/shorthand.xml
generate-ssg-chromium-cpe-dictionary.xml: chromium/profiles
generate-ssg-chromium-cpe-dictionary.xml: chromium/checks/sce/metadata.json
generate-ssg-chromium-cpe-dictionary.xml: chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/build.make

.PHONY : generate-ssg-chromium-cpe-dictionary.xml

# Rule to build all files generated by this target.
chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/build: generate-ssg-chromium-cpe-dictionary.xml

.PHONY : chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/build

chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/cmake_clean.cmake
.PHONY : chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/clean

chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium /home/chase/_work/complianceascode-content/complianceascode-content/build /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium /home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chromium/CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/depend
