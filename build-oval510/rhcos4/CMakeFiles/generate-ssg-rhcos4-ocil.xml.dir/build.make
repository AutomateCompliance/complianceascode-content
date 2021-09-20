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

# Utility rule file for generate-ssg-rhcos4-ocil.xml.

# Include the progress variables for this target.
include rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/progress.make

rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml: ssg-rhcos4-ocil.xml


ssg-rhcos4-ocil.xml: rhcos4/ocil-linked.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[rhcos4-content] generating ssg-rhcos4-ocil.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhcos4-ocil.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/ocil-linked.xml

rhcos4/xccdf-linked.xml: rhcos4/xccdf-unlinked.xml
rhcos4/xccdf-linked.xml: rhcos4/oval-unlinked.xml
rhcos4/xccdf-linked.xml: rhcos4/ocil-unlinked.xml
rhcos4/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[rhcos4-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked.xml ssg

rhcos4/oval-linked.xml: rhcos4/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate rhcos4/oval-linked.xml

rhcos4/ocil-linked.xml: rhcos4/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate rhcos4/ocil-linked.xml

rhcos4/xccdf-unlinked.xml: rhcos4/xccdf-unlinked-ocilrefs.xml
rhcos4/xccdf-unlinked.xml: rhcos4/ignition-fixes.xml
rhcos4/xccdf-unlinked.xml: rhcos4/kubernetes-fixes.xml
rhcos4/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[rhcos4-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xsltproc --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/kubernetes-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked.xml

rhcos4/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[rhcos4-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhcos4/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/rhcos4/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/oval-unlinked.xml

rhcos4/ocil-unlinked.xml: rhcos4/xccdf-unlinked-resolved.xml
rhcos4/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[rhcos4-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/ocil-unlinked.xml

rhcos4/xccdf-unlinked-ocilrefs.xml: rhcos4/xccdf-unlinked-resolved.xml
rhcos4/xccdf-unlinked-ocilrefs.xml: rhcos4/ocil-unlinked.xml
rhcos4/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[rhcos4-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xsltproc --stringparam product rhcos4 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked-resolved.xml

rhcos4/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[rhcos4-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/fixes/ignition

rhcos4/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[rhcos4-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/fixes/kubernetes

rhcos4/xccdf-unlinked-resolved.xml: rhcos4/shorthand.xml
rhcos4/xccdf-unlinked-resolved.xml: ../products/rhcos4/transforms/shorthand2xccdf.xslt
rhcos4/xccdf-unlinked-resolved.xml: ../products/rhcos4/transforms/constants.xslt
rhcos4/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[rhcos4-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhcos4/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/xccdf-unlinked-resolved.xml

rhcos4/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
rhcos4/shorthand.xml: rhcos4/profiles
rhcos4/shorthand.xml: rhcos4/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[rhcos4-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhcos4/product.yml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/shorthand.xml

rhcos4/profiles: ../products/rhcos4/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[rhcos4-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhcos4/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/profiles/{name}.profile

rhcos4/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[rhcos4-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/checks/sce/metadata.json

generate-ssg-rhcos4-ocil.xml: rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml
generate-ssg-rhcos4-ocil.xml: ssg-rhcos4-ocil.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/xccdf-linked.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/oval-linked.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/ocil-linked.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/xccdf-unlinked.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/oval-unlinked.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/ocil-unlinked.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/xccdf-unlinked-ocilrefs.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/ignition-fixes.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/kubernetes-fixes.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/xccdf-unlinked-resolved.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/shorthand.xml
generate-ssg-rhcos4-ocil.xml: rhcos4/profiles
generate-ssg-rhcos4-ocil.xml: rhcos4/checks/sce/metadata.json
generate-ssg-rhcos4-ocil.xml: rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/build.make

.PHONY : generate-ssg-rhcos4-ocil.xml

# Rule to build all files generated by this target.
rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/build: generate-ssg-rhcos4-ocil.xml

.PHONY : rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/build

rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/cmake_clean.cmake
.PHONY : rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/clean

rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/rhcos4 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhcos4/CMakeFiles/generate-ssg-rhcos4-ocil.xml.dir/depend

