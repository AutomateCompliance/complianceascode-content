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

# Utility rule file for generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.

# Include the progress variables for this target.
include rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/progress.make

rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/xccdf-unlinked-ocilrefs.xml


rhel9/xccdf-unlinked-ocilrefs.xml: rhel9/xccdf-unlinked-resolved.xml
rhel9/xccdf-unlinked-ocilrefs.xml: rhel9/ocil-unlinked.xml
rhel9/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[rhel9-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/xsltproc --stringparam product rhel9 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/xccdf-unlinked-resolved.xml

rhel9/xccdf-unlinked-resolved.xml: rhel9/shorthand.xml
rhel9/xccdf-unlinked-resolved.xml: ../products/rhel9/transforms/shorthand2xccdf.xslt
rhel9/xccdf-unlinked-resolved.xml: ../products/rhel9/transforms/constants.xslt
rhel9/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[rhel9-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel9/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/xccdf-unlinked-resolved.xml

rhel9/ocil-unlinked.xml: rhel9/xccdf-unlinked-resolved.xml
rhel9/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[rhel9-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/ocil-unlinked.xml

rhel9/shorthand.xml: bash-remediation-functions.xml
rhel9/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
rhel9/shorthand.xml: rhel9/profiles
rhel9/shorthand.xml: rhel9/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[rhel9-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel9/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/shorthand.xml

rhel9/profiles: ../products/rhel9/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[rhel9-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel9/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/profiles/{name}.profile

rhel9/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[rhel9-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/checks/sce/metadata.json

generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml
generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/xccdf-unlinked-ocilrefs.xml
generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/xccdf-unlinked-resolved.xml
generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/ocil-unlinked.xml
generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/shorthand.xml
generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/profiles
generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/checks/sce/metadata.json
generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml: rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/build.make

.PHONY : generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml

# Rule to build all files generated by this target.
rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/build: generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml

.PHONY : rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/build

rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 && $(CMAKE_COMMAND) -P CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/cmake_clean.cmake
.PHONY : rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/clean

rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel9 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhel9/CMakeFiles/generate-internal-rhel9-xccdf-unlinked-ocilrefs.xml.dir/depend

