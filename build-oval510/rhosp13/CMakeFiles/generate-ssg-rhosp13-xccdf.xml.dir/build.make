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

# Utility rule file for generate-ssg-rhosp13-xccdf.xml.

# Include the progress variables for this target.
include rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/progress.make

rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml: ssg-rhosp13-xccdf.xml


ssg-rhosp13-xccdf.xml: rhosp13/xccdf-linked.xml
ssg-rhosp13-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-rhosp13-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[rhosp13-content] generating ssg-rhosp13-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/sed -i s/oval-linked.xml/ssg-rhosp13-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/sed -i s/ocil-linked.xml/ssg-rhosp13-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-rhosp13-xccdf.xml

rhosp13/xccdf-linked.xml: rhosp13/xccdf-unlinked.xml
rhosp13/xccdf-linked.xml: rhosp13/oval-unlinked.xml
rhosp13/xccdf-linked.xml: rhosp13/ocil-unlinked.xml
rhosp13/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[rhosp13-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked.xml ssg

rhosp13/oval-linked.xml: rhosp13/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate rhosp13/oval-linked.xml

rhosp13/ocil-linked.xml: rhosp13/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate rhosp13/ocil-linked.xml

rhosp13/xccdf-unlinked.xml: rhosp13/xccdf-unlinked-ocilrefs.xml
rhosp13/xccdf-unlinked.xml: rhosp13/bash-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/ansible-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/puppet-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/anaconda-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/ignition-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/kubernetes-fixes.xml
rhosp13/xccdf-unlinked.xml: rhosp13/blueprint-fixes.xml
rhosp13/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[rhosp13-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked.xml

rhosp13/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[rhosp13-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhosp13/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/rhosp13/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/oval-unlinked.xml

rhosp13/ocil-unlinked.xml: rhosp13/xccdf-unlinked-resolved.xml
rhosp13/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[rhosp13-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/ocil-unlinked.xml

rhosp13/xccdf-unlinked-ocilrefs.xml: rhosp13/xccdf-unlinked-resolved.xml
rhosp13/xccdf-unlinked-ocilrefs.xml: rhosp13/ocil-unlinked.xml
rhosp13/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[rhosp13-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xsltproc --stringparam product rhosp13 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked-resolved.xml

rhosp13/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[rhosp13-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/fixes/bash

rhosp13/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[rhosp13-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/fixes/ansible

rhosp13/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[rhosp13-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/fixes/puppet

rhosp13/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[rhosp13-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/fixes/anaconda

rhosp13/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[rhosp13-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/fixes/ignition

rhosp13/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[rhosp13-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/fixes/kubernetes

rhosp13/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[rhosp13-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/fixes/blueprint

rhosp13/xccdf-unlinked-resolved.xml: rhosp13/shorthand.xml
rhosp13/xccdf-unlinked-resolved.xml: ../products/rhosp13/transforms/shorthand2xccdf.xslt
rhosp13/xccdf-unlinked-resolved.xml: ../products/rhosp13/transforms/constants.xslt
rhosp13/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[rhosp13-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhosp13/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/xccdf-unlinked-resolved.xml

rhosp13/shorthand.xml: bash-remediation-functions.xml
rhosp13/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
rhosp13/shorthand.xml: rhosp13/profiles
rhosp13/shorthand.xml: rhosp13/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[rhosp13-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhosp13/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/shorthand.xml

rhosp13/profiles: ../products/rhosp13/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[rhosp13-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/rhosp13/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/profiles/{name}.profile

rhosp13/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[rhosp13-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/checks/sce/metadata.json

generate-ssg-rhosp13-xccdf.xml: rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml
generate-ssg-rhosp13-xccdf.xml: ssg-rhosp13-xccdf.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/xccdf-linked.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/oval-linked.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/ocil-linked.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/xccdf-unlinked.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/oval-unlinked.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/ocil-unlinked.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/xccdf-unlinked-ocilrefs.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/bash-fixes.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/ansible-fixes.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/puppet-fixes.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/anaconda-fixes.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/ignition-fixes.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/kubernetes-fixes.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/blueprint-fixes.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/xccdf-unlinked-resolved.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/shorthand.xml
generate-ssg-rhosp13-xccdf.xml: rhosp13/profiles
generate-ssg-rhosp13-xccdf.xml: rhosp13/checks/sce/metadata.json
generate-ssg-rhosp13-xccdf.xml: rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/build.make

.PHONY : generate-ssg-rhosp13-xccdf.xml

# Rule to build all files generated by this target.
rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/build: generate-ssg-rhosp13-xccdf.xml

.PHONY : rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/build

rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/cmake_clean.cmake
.PHONY : rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/clean

rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/rhosp13 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rhosp13/CMakeFiles/generate-ssg-rhosp13-xccdf.xml.dir/depend

