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

# Utility rule file for generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.

# Include the progress variables for this target.
include wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/progress.make

wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/xccdf-unlinked-ocilrefs.xml


wrlinux1019/xccdf-unlinked-ocilrefs.xml: wrlinux1019/xccdf-unlinked-resolved.xml
wrlinux1019/xccdf-unlinked-ocilrefs.xml: wrlinux1019/ocil-unlinked.xml
wrlinux1019/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[wrlinux1019-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/xsltproc --stringparam product wrlinux1019 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/xccdf-unlinked-resolved.xml

wrlinux1019/xccdf-unlinked-resolved.xml: wrlinux1019/shorthand.xml
wrlinux1019/xccdf-unlinked-resolved.xml: ../products/wrlinux1019/transforms/shorthand2xccdf.xslt
wrlinux1019/xccdf-unlinked-resolved.xml: ../products/wrlinux1019/transforms/constants.xslt
wrlinux1019/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[wrlinux1019-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/xccdf-unlinked-resolved.xml

wrlinux1019/ocil-unlinked.xml: wrlinux1019/xccdf-unlinked-resolved.xml
wrlinux1019/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[wrlinux1019-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/ocil-unlinked.xml

wrlinux1019/shorthand.xml: bash-remediation-functions.xml
wrlinux1019/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
wrlinux1019/shorthand.xml: wrlinux1019/profiles
wrlinux1019/shorthand.xml: wrlinux1019/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[wrlinux1019-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/shorthand.xml

wrlinux1019/profiles: ../products/wrlinux1019/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[wrlinux1019-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/profiles/{name}.profile

wrlinux1019/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[wrlinux1019-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/checks/sce/metadata.json

generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml
generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/xccdf-unlinked-ocilrefs.xml
generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/xccdf-unlinked-resolved.xml
generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/ocil-unlinked.xml
generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/shorthand.xml
generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/profiles
generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/checks/sce/metadata.json
generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml: wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/build.make

.PHONY : generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml

# Rule to build all files generated by this target.
wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/build: generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml

.PHONY : wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/build

wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/cmake_clean.cmake
.PHONY : wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/clean

wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019 /home/chase/_work/complianceascode-content/complianceascode-content/build /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019 /home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wrlinux1019/CMakeFiles/generate-internal-wrlinux1019-xccdf-unlinked-ocilrefs.xml.dir/depend
