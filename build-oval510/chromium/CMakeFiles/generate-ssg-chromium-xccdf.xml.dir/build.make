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

# Utility rule file for generate-ssg-chromium-xccdf.xml.

# Include the progress variables for this target.
include chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/progress.make

chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml: ssg-chromium-xccdf.xml


ssg-chromium-xccdf.xml: chromium/xccdf-linked.xml
ssg-chromium-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-chromium-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[chromium-content] generating ssg-chromium-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/sed -i s/oval-linked.xml/ssg-chromium-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/sed -i s/ocil-linked.xml/ssg-chromium-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-chromium-xccdf.xml

chromium/xccdf-linked.xml: chromium/xccdf-unlinked.xml
chromium/xccdf-linked.xml: chromium/oval-unlinked.xml
chromium/xccdf-linked.xml: chromium/ocil-unlinked.xml
chromium/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[chromium-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked.xml ssg

chromium/oval-linked.xml: chromium/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate chromium/oval-linked.xml

chromium/ocil-linked.xml: chromium/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate chromium/ocil-linked.xml

chromium/xccdf-unlinked.xml: chromium/xccdf-unlinked-ocilrefs.xml
chromium/xccdf-unlinked.xml: chromium/bash-fixes.xml
chromium/xccdf-unlinked.xml: chromium/ansible-fixes.xml
chromium/xccdf-unlinked.xml: chromium/puppet-fixes.xml
chromium/xccdf-unlinked.xml: chromium/anaconda-fixes.xml
chromium/xccdf-unlinked.xml: chromium/ignition-fixes.xml
chromium/xccdf-unlinked.xml: chromium/kubernetes-fixes.xml
chromium/xccdf-unlinked.xml: chromium/blueprint-fixes.xml
chromium/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[chromium-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked.xml

chromium/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[chromium-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/oval-unlinked.xml

chromium/ocil-unlinked.xml: chromium/xccdf-unlinked-resolved.xml
chromium/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[chromium-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/ocil-unlinked.xml

chromium/xccdf-unlinked-ocilrefs.xml: chromium/xccdf-unlinked-resolved.xml
chromium/xccdf-unlinked-ocilrefs.xml: chromium/ocil-unlinked.xml
chromium/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[chromium-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xsltproc --stringparam product chromium --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked-resolved.xml

chromium/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[chromium-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/fixes/bash

chromium/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[chromium-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/fixes/ansible

chromium/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[chromium-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/fixes/puppet

chromium/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[chromium-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/fixes/anaconda

chromium/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[chromium-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/fixes/ignition

chromium/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[chromium-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/fixes/kubernetes

chromium/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[chromium-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/fixes/blueprint

chromium/xccdf-unlinked-resolved.xml: chromium/shorthand.xml
chromium/xccdf-unlinked-resolved.xml: ../products/chromium/transforms/shorthand2xccdf.xslt
chromium/xccdf-unlinked-resolved.xml: ../products/chromium/transforms/constants.xslt
chromium/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[chromium-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/xccdf-unlinked-resolved.xml

chromium/shorthand.xml: bash-remediation-functions.xml
chromium/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
chromium/shorthand.xml: chromium/profiles
chromium/shorthand.xml: chromium/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[chromium-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/shorthand.xml

chromium/profiles: ../products/chromium/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[chromium-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/profiles/{name}.profile

chromium/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[chromium-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/checks/sce/metadata.json

generate-ssg-chromium-xccdf.xml: chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml
generate-ssg-chromium-xccdf.xml: ssg-chromium-xccdf.xml
generate-ssg-chromium-xccdf.xml: chromium/xccdf-linked.xml
generate-ssg-chromium-xccdf.xml: chromium/oval-linked.xml
generate-ssg-chromium-xccdf.xml: chromium/ocil-linked.xml
generate-ssg-chromium-xccdf.xml: chromium/xccdf-unlinked.xml
generate-ssg-chromium-xccdf.xml: chromium/oval-unlinked.xml
generate-ssg-chromium-xccdf.xml: chromium/ocil-unlinked.xml
generate-ssg-chromium-xccdf.xml: chromium/xccdf-unlinked-ocilrefs.xml
generate-ssg-chromium-xccdf.xml: chromium/bash-fixes.xml
generate-ssg-chromium-xccdf.xml: chromium/ansible-fixes.xml
generate-ssg-chromium-xccdf.xml: chromium/puppet-fixes.xml
generate-ssg-chromium-xccdf.xml: chromium/anaconda-fixes.xml
generate-ssg-chromium-xccdf.xml: chromium/ignition-fixes.xml
generate-ssg-chromium-xccdf.xml: chromium/kubernetes-fixes.xml
generate-ssg-chromium-xccdf.xml: chromium/blueprint-fixes.xml
generate-ssg-chromium-xccdf.xml: chromium/xccdf-unlinked-resolved.xml
generate-ssg-chromium-xccdf.xml: chromium/shorthand.xml
generate-ssg-chromium-xccdf.xml: chromium/profiles
generate-ssg-chromium-xccdf.xml: chromium/checks/sce/metadata.json
generate-ssg-chromium-xccdf.xml: chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/build.make

.PHONY : generate-ssg-chromium-xccdf.xml

# Rule to build all files generated by this target.
chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/build: generate-ssg-chromium-xccdf.xml

.PHONY : chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/build

chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/cmake_clean.cmake
.PHONY : chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/clean

chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/chromium /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chromium/CMakeFiles/generate-ssg-chromium-xccdf.xml.dir/depend

