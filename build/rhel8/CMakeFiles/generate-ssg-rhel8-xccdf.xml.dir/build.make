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

# Utility rule file for generate-ssg-rhel8-xccdf.xml.

# Include the progress variables for this target.
include rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/progress.make

rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml: ssg-rhel8-xccdf.xml


ssg-rhel8-xccdf.xml: rhel8/xccdf-linked.xml
ssg-rhel8-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-rhel8-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[rhel8-content] generating ssg-rhel8-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/sed -i s/oval-linked.xml/ssg-rhel8-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/sed -i s/ocil-linked.xml/ssg-rhel8-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel8-xccdf.xml

rhel8/xccdf-linked.xml: rhel8/xccdf-unlinked.xml
rhel8/xccdf-linked.xml: rhel8/oval-unlinked.xml
rhel8/xccdf-linked.xml: rhel8/ocil-unlinked.xml
rhel8/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[rhel8-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked.xml ssg

rhel8/oval-linked.xml: rhel8/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate rhel8/oval-linked.xml

rhel8/ocil-linked.xml: rhel8/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate rhel8/ocil-linked.xml

rhel8/xccdf-unlinked.xml: rhel8/xccdf-unlinked-ocilrefs.xml
rhel8/xccdf-unlinked.xml: rhel8/bash-fixes.xml
rhel8/xccdf-unlinked.xml: rhel8/ansible-fixes.xml
rhel8/xccdf-unlinked.xml: rhel8/puppet-fixes.xml
rhel8/xccdf-unlinked.xml: rhel8/anaconda-fixes.xml
rhel8/xccdf-unlinked.xml: rhel8/ignition-fixes.xml
rhel8/xccdf-unlinked.xml: rhel8/kubernetes-fixes.xml
rhel8/xccdf-unlinked.xml: rhel8/blueprint-fixes.xml
rhel8/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[rhel8-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked.xml

rhel8/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[rhel8-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel8/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel8/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/oval-unlinked.xml

rhel8/ocil-unlinked.xml: rhel8/xccdf-unlinked-resolved.xml
rhel8/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[rhel8-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/ocil-unlinked.xml

rhel8/xccdf-unlinked-ocilrefs.xml: rhel8/xccdf-unlinked-resolved.xml
rhel8/xccdf-unlinked-ocilrefs.xml: rhel8/ocil-unlinked.xml
rhel8/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[rhel8-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xsltproc --stringparam product rhel8 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked-resolved.xml

rhel8/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[rhel8-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/fixes/bash

rhel8/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[rhel8-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/fixes/ansible

rhel8/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[rhel8-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/fixes/puppet

rhel8/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[rhel8-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/fixes/anaconda

rhel8/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[rhel8-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/fixes/ignition

rhel8/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[rhel8-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/fixes/kubernetes

rhel8/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[rhel8-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/fixes/blueprint

rhel8/xccdf-unlinked-resolved.xml: rhel8/shorthand.xml
rhel8/xccdf-unlinked-resolved.xml: ../products/rhel8/transforms/shorthand2xccdf.xslt
rhel8/xccdf-unlinked-resolved.xml: ../products/rhel8/transforms/constants.xslt
rhel8/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
rhel8/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-rhel8-v1r3-xccdf-manual.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[rhel8-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel8/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/add_stig_references.py --disa-stig /home/chase/_work/complianceascode-content/complianceascode-content/shared/references/disa-stig-rhel8-v1r3-xccdf-manual.xml --unlinked-xccdf /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/xccdf-unlinked-resolved.xml

rhel8/shorthand.xml: bash-remediation-functions.xml
rhel8/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
rhel8/shorthand.xml: rhel8/profiles
rhel8/shorthand.xml: rhel8/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[rhel8-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel8/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/shorthand.xml

rhel8/profiles: ../products/rhel8/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[rhel8-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel8/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/profiles/{name}.profile

rhel8/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[rhel8-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/checks/sce/metadata.json

generate-ssg-rhel8-xccdf.xml: rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml
generate-ssg-rhel8-xccdf.xml: ssg-rhel8-xccdf.xml
generate-ssg-rhel8-xccdf.xml: rhel8/xccdf-linked.xml
generate-ssg-rhel8-xccdf.xml: rhel8/oval-linked.xml
generate-ssg-rhel8-xccdf.xml: rhel8/ocil-linked.xml
generate-ssg-rhel8-xccdf.xml: rhel8/xccdf-unlinked.xml
generate-ssg-rhel8-xccdf.xml: rhel8/oval-unlinked.xml
generate-ssg-rhel8-xccdf.xml: rhel8/ocil-unlinked.xml
generate-ssg-rhel8-xccdf.xml: rhel8/xccdf-unlinked-ocilrefs.xml
generate-ssg-rhel8-xccdf.xml: rhel8/bash-fixes.xml
generate-ssg-rhel8-xccdf.xml: rhel8/ansible-fixes.xml
generate-ssg-rhel8-xccdf.xml: rhel8/puppet-fixes.xml
generate-ssg-rhel8-xccdf.xml: rhel8/anaconda-fixes.xml
generate-ssg-rhel8-xccdf.xml: rhel8/ignition-fixes.xml
generate-ssg-rhel8-xccdf.xml: rhel8/kubernetes-fixes.xml
generate-ssg-rhel8-xccdf.xml: rhel8/blueprint-fixes.xml
generate-ssg-rhel8-xccdf.xml: rhel8/xccdf-unlinked-resolved.xml
generate-ssg-rhel8-xccdf.xml: rhel8/shorthand.xml
generate-ssg-rhel8-xccdf.xml: rhel8/profiles
generate-ssg-rhel8-xccdf.xml: rhel8/checks/sce/metadata.json
generate-ssg-rhel8-xccdf.xml: rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/build.make

.PHONY : generate-ssg-rhel8-xccdf.xml

# Rule to build all files generated by this target.
rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/build: generate-ssg-rhel8-xccdf.xml

.PHONY : rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/build

rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/cmake_clean.cmake
.PHONY : rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/clean

rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel8 /home/chase/_work/complianceascode-content/complianceascode-content/build /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8 /home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhel8/CMakeFiles/generate-ssg-rhel8-xccdf.xml.dir/depend
