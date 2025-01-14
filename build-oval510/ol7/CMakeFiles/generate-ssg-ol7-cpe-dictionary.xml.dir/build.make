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

# Utility rule file for generate-ssg-ol7-cpe-dictionary.xml.

# Include the progress variables for this target.
include ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/progress.make

ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml: ssg-ol7-cpe-dictionary.xml
ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml: ssg-ol7-cpe-oval.xml


ssg-ol7-cpe-dictionary.xml: ol7/oval-unlinked.xml
ssg-ol7-cpe-dictionary.xml: ol7/shorthand.xml
ssg-ol7-cpe-dictionary.xml: ../build-scripts/cpe_generate.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[ol7-content] generating ssg-ol7-cpe-dictionary.xml, ssg-ol7-cpe-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/cpe_generate.py --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/product.yml ssg /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/oval-unlinked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-cpe-dictionary.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-cpe-dictionary.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-cpe-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-cpe-oval.xml

ssg-ol7-cpe-oval.xml: ssg-ol7-cpe-dictionary.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ssg-ol7-cpe-oval.xml

ol7/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[ol7-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/oval-unlinked.xml

ol7/shorthand.xml: bash-remediation-functions.xml
ol7/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
ol7/shorthand.xml: ol7/profiles
ol7/shorthand.xml: ol7/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[ol7-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/shorthand.xml

ol7/profiles: ../products/ol7/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[ol7-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/profiles/{name}.profile

ol7/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[ol7-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/sce/metadata.json

generate-ssg-ol7-cpe-dictionary.xml: ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml
generate-ssg-ol7-cpe-dictionary.xml: ssg-ol7-cpe-dictionary.xml
generate-ssg-ol7-cpe-dictionary.xml: ssg-ol7-cpe-oval.xml
generate-ssg-ol7-cpe-dictionary.xml: ol7/oval-unlinked.xml
generate-ssg-ol7-cpe-dictionary.xml: ol7/shorthand.xml
generate-ssg-ol7-cpe-dictionary.xml: ol7/profiles
generate-ssg-ol7-cpe-dictionary.xml: ol7/checks/sce/metadata.json
generate-ssg-ol7-cpe-dictionary.xml: ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/build.make

.PHONY : generate-ssg-ol7-cpe-dictionary.xml

# Rule to build all files generated by this target.
ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/build: generate-ssg-ol7-cpe-dictionary.xml

.PHONY : ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/build

ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/cmake_clean.cmake
.PHONY : ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/clean

ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ol7/CMakeFiles/generate-ssg-ol7-cpe-dictionary.xml.dir/depend

