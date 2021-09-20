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

# Utility rule file for wrlinux1019-profile-stats.

# Include the progress variables for this target.
include wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/progress.make

wrlinux1019/CMakeFiles/wrlinux1019-profile-stats: ssg-wrlinux1019-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[wrlinux1019-profile-stats] generating per profile statistics"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/cmake -E echo Per\ profile\ statistics\ for\ 'wrlinux1019':
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/profile_tool.py stats --benchmark /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml

ssg-wrlinux1019-xccdf.xml: wrlinux1019/xccdf-linked.xml
ssg-wrlinux1019-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-wrlinux1019-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[wrlinux1019-content] generating ssg-wrlinux1019-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/sed -i s/oval-linked.xml/ssg-wrlinux1019-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/sed -i s/ocil-linked.xml/ssg-wrlinux1019-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-wrlinux1019-xccdf.xml

wrlinux1019/xccdf-linked.xml: wrlinux1019/xccdf-unlinked.xml
wrlinux1019/xccdf-linked.xml: wrlinux1019/oval-unlinked.xml
wrlinux1019/xccdf-linked.xml: wrlinux1019/ocil-unlinked.xml
wrlinux1019/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[wrlinux1019-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked.xml ssg

wrlinux1019/oval-linked.xml: wrlinux1019/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate wrlinux1019/oval-linked.xml

wrlinux1019/ocil-linked.xml: wrlinux1019/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate wrlinux1019/ocil-linked.xml

wrlinux1019/xccdf-unlinked.xml: wrlinux1019/xccdf-unlinked-ocilrefs.xml
wrlinux1019/xccdf-unlinked.xml: wrlinux1019/bash-fixes.xml
wrlinux1019/xccdf-unlinked.xml: wrlinux1019/ansible-fixes.xml
wrlinux1019/xccdf-unlinked.xml: wrlinux1019/puppet-fixes.xml
wrlinux1019/xccdf-unlinked.xml: wrlinux1019/anaconda-fixes.xml
wrlinux1019/xccdf-unlinked.xml: wrlinux1019/ignition-fixes.xml
wrlinux1019/xccdf-unlinked.xml: wrlinux1019/kubernetes-fixes.xml
wrlinux1019/xccdf-unlinked.xml: wrlinux1019/blueprint-fixes.xml
wrlinux1019/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[wrlinux1019-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked.xml

wrlinux1019/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[wrlinux1019-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/oval-unlinked.xml

wrlinux1019/ocil-unlinked.xml: wrlinux1019/xccdf-unlinked-resolved.xml
wrlinux1019/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[wrlinux1019-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/ocil-unlinked.xml

wrlinux1019/xccdf-unlinked-ocilrefs.xml: wrlinux1019/xccdf-unlinked-resolved.xml
wrlinux1019/xccdf-unlinked-ocilrefs.xml: wrlinux1019/ocil-unlinked.xml
wrlinux1019/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[wrlinux1019-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xsltproc --stringparam product wrlinux1019 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked-resolved.xml

wrlinux1019/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[wrlinux1019-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/fixes/bash

wrlinux1019/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[wrlinux1019-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/fixes/ansible

wrlinux1019/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[wrlinux1019-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/fixes/puppet

wrlinux1019/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[wrlinux1019-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/fixes/anaconda

wrlinux1019/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[wrlinux1019-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/fixes/ignition

wrlinux1019/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[wrlinux1019-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/fixes/kubernetes

wrlinux1019/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[wrlinux1019-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/fixes/blueprint

wrlinux1019/xccdf-unlinked-resolved.xml: wrlinux1019/shorthand.xml
wrlinux1019/xccdf-unlinked-resolved.xml: ../products/wrlinux1019/transforms/shorthand2xccdf.xslt
wrlinux1019/xccdf-unlinked-resolved.xml: ../products/wrlinux1019/transforms/constants.xslt
wrlinux1019/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[wrlinux1019-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/xccdf-unlinked-resolved.xml

wrlinux1019/shorthand.xml: bash-remediation-functions.xml
wrlinux1019/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
wrlinux1019/shorthand.xml: wrlinux1019/profiles
wrlinux1019/shorthand.xml: wrlinux1019/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[wrlinux1019-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/shorthand.xml

wrlinux1019/profiles: ../products/wrlinux1019/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[wrlinux1019-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/profiles/{name}.profile

wrlinux1019/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[wrlinux1019-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/checks/sce/metadata.json

wrlinux1019-profile-stats: wrlinux1019/CMakeFiles/wrlinux1019-profile-stats
wrlinux1019-profile-stats: ssg-wrlinux1019-xccdf.xml
wrlinux1019-profile-stats: wrlinux1019/xccdf-linked.xml
wrlinux1019-profile-stats: wrlinux1019/oval-linked.xml
wrlinux1019-profile-stats: wrlinux1019/ocil-linked.xml
wrlinux1019-profile-stats: wrlinux1019/xccdf-unlinked.xml
wrlinux1019-profile-stats: wrlinux1019/oval-unlinked.xml
wrlinux1019-profile-stats: wrlinux1019/ocil-unlinked.xml
wrlinux1019-profile-stats: wrlinux1019/xccdf-unlinked-ocilrefs.xml
wrlinux1019-profile-stats: wrlinux1019/bash-fixes.xml
wrlinux1019-profile-stats: wrlinux1019/ansible-fixes.xml
wrlinux1019-profile-stats: wrlinux1019/puppet-fixes.xml
wrlinux1019-profile-stats: wrlinux1019/anaconda-fixes.xml
wrlinux1019-profile-stats: wrlinux1019/ignition-fixes.xml
wrlinux1019-profile-stats: wrlinux1019/kubernetes-fixes.xml
wrlinux1019-profile-stats: wrlinux1019/blueprint-fixes.xml
wrlinux1019-profile-stats: wrlinux1019/xccdf-unlinked-resolved.xml
wrlinux1019-profile-stats: wrlinux1019/shorthand.xml
wrlinux1019-profile-stats: wrlinux1019/profiles
wrlinux1019-profile-stats: wrlinux1019/checks/sce/metadata.json
wrlinux1019-profile-stats: wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/build.make

.PHONY : wrlinux1019-profile-stats

# Rule to build all files generated by this target.
wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/build: wrlinux1019-profile-stats

.PHONY : wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/build

wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 && $(CMAKE_COMMAND) -P CMakeFiles/wrlinux1019-profile-stats.dir/cmake_clean.cmake
.PHONY : wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/clean

wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/wrlinux1019 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wrlinux1019/CMakeFiles/wrlinux1019-profile-stats.dir/depend

