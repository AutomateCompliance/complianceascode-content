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

# Utility rule file for generate-internal-firefox-shorthand.xml.

# Include the progress variables for this target.
include firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/progress.make

firefox/CMakeFiles/generate-internal-firefox-shorthand.xml: firefox/shorthand.xml


firefox/shorthand.xml: bash-remediation-functions.xml
firefox/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
firefox/shorthand.xml: firefox/profiles
firefox/shorthand.xml: firefox/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[firefox-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/shorthand.xml

firefox/profiles: ../products/firefox/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[firefox-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/profiles/{name}.profile

firefox/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[firefox-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/checks/sce/metadata.json

generate-internal-firefox-shorthand.xml: firefox/CMakeFiles/generate-internal-firefox-shorthand.xml
generate-internal-firefox-shorthand.xml: firefox/shorthand.xml
generate-internal-firefox-shorthand.xml: firefox/profiles
generate-internal-firefox-shorthand.xml: firefox/checks/sce/metadata.json
generate-internal-firefox-shorthand.xml: firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/build.make

.PHONY : generate-internal-firefox-shorthand.xml

# Rule to build all files generated by this target.
firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/build: generate-internal-firefox-shorthand.xml

.PHONY : firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/build

firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-firefox-shorthand.xml.dir/cmake_clean.cmake
.PHONY : firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/clean

firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : firefox/CMakeFiles/generate-internal-firefox-shorthand.xml.dir/depend

