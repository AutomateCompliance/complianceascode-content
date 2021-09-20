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

# Utility rule file for sle12-stats.

# Include the progress variables for this target.
include sle12/CMakeFiles/sle12-stats.dir/progress.make

sle12/CMakeFiles/sle12-stats: ssg-sle12-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[sle12-stats] generating benchmark statistics"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/cmake -E echo Benchmark\ statistics\ for\ 'sle12':
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/profile_tool.py stats --benchmark /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml --profile all

ssg-sle12-xccdf.xml: sle12/xccdf-linked.xml
ssg-sle12-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-sle12-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[sle12-content] generating ssg-sle12-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/sed -i s/oval-linked.xml/ssg-sle12-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/sed -i s/ocil-linked.xml/ssg-sle12-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-sle12-xccdf.xml

sle12/xccdf-linked.xml: sle12/xccdf-unlinked.xml
sle12/xccdf-linked.xml: sle12/oval-unlinked.xml
sle12/xccdf-linked.xml: sle12/ocil-unlinked.xml
sle12/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[sle12-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked.xml ssg

sle12/oval-linked.xml: sle12/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate sle12/oval-linked.xml

sle12/ocil-linked.xml: sle12/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate sle12/ocil-linked.xml

sle12/xccdf-unlinked.xml: sle12/xccdf-unlinked-ocilrefs.xml
sle12/xccdf-unlinked.xml: sle12/bash-fixes.xml
sle12/xccdf-unlinked.xml: sle12/ansible-fixes.xml
sle12/xccdf-unlinked.xml: sle12/puppet-fixes.xml
sle12/xccdf-unlinked.xml: sle12/anaconda-fixes.xml
sle12/xccdf-unlinked.xml: sle12/ignition-fixes.xml
sle12/xccdf-unlinked.xml: sle12/kubernetes-fixes.xml
sle12/xccdf-unlinked.xml: sle12/blueprint-fixes.xml
sle12/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[sle12-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked.xml

sle12/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[sle12-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/sle12/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/sle12/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/oval-unlinked.xml

sle12/ocil-unlinked.xml: sle12/xccdf-unlinked-resolved.xml
sle12/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[sle12-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/ocil-unlinked.xml

sle12/xccdf-unlinked-ocilrefs.xml: sle12/xccdf-unlinked-resolved.xml
sle12/xccdf-unlinked-ocilrefs.xml: sle12/ocil-unlinked.xml
sle12/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[sle12-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xsltproc --stringparam product sle12 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked-resolved.xml

sle12/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[sle12-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/fixes/bash

sle12/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[sle12-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/fixes/ansible

sle12/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[sle12-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/fixes/puppet

sle12/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[sle12-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/fixes/anaconda

sle12/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[sle12-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/fixes/ignition

sle12/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[sle12-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/fixes/kubernetes

sle12/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[sle12-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/fixes/blueprint

sle12/xccdf-unlinked-resolved.xml: sle12/shorthand.xml
sle12/xccdf-unlinked-resolved.xml: ../products/sle12/transforms/shorthand2xccdf.xslt
sle12/xccdf-unlinked-resolved.xml: ../products/sle12/transforms/constants.xslt
sle12/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
sle12/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-sle12-v2r3-xccdf-manual.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[sle12-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/sle12/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/add_stig_references.py --disa-stig /home/chase/_work/complianceascode-content/complianceascode-content/shared/references/disa-stig-sle12-v2r3-xccdf-manual.xml --unlinked-xccdf /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/xccdf-unlinked-resolved.xml

sle12/shorthand.xml: bash-remediation-functions.xml
sle12/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
sle12/shorthand.xml: sle12/profiles
sle12/shorthand.xml: sle12/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[sle12-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/sle12/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/shorthand.xml

sle12/profiles: ../products/sle12/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[sle12-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/sle12/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/profiles/{name}.profile

sle12/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[sle12-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/checks/sce/metadata.json

sle12-stats: sle12/CMakeFiles/sle12-stats
sle12-stats: ssg-sle12-xccdf.xml
sle12-stats: sle12/xccdf-linked.xml
sle12-stats: sle12/oval-linked.xml
sle12-stats: sle12/ocil-linked.xml
sle12-stats: sle12/xccdf-unlinked.xml
sle12-stats: sle12/oval-unlinked.xml
sle12-stats: sle12/ocil-unlinked.xml
sle12-stats: sle12/xccdf-unlinked-ocilrefs.xml
sle12-stats: sle12/bash-fixes.xml
sle12-stats: sle12/ansible-fixes.xml
sle12-stats: sle12/puppet-fixes.xml
sle12-stats: sle12/anaconda-fixes.xml
sle12-stats: sle12/ignition-fixes.xml
sle12-stats: sle12/kubernetes-fixes.xml
sle12-stats: sle12/blueprint-fixes.xml
sle12-stats: sle12/xccdf-unlinked-resolved.xml
sle12-stats: sle12/shorthand.xml
sle12-stats: sle12/profiles
sle12-stats: sle12/checks/sce/metadata.json
sle12-stats: sle12/CMakeFiles/sle12-stats.dir/build.make

.PHONY : sle12-stats

# Rule to build all files generated by this target.
sle12/CMakeFiles/sle12-stats.dir/build: sle12-stats

.PHONY : sle12/CMakeFiles/sle12-stats.dir/build

sle12/CMakeFiles/sle12-stats.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 && $(CMAKE_COMMAND) -P CMakeFiles/sle12-stats.dir/cmake_clean.cmake
.PHONY : sle12/CMakeFiles/sle12-stats.dir/clean

sle12/CMakeFiles/sle12-stats.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/sle12 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/sle12/CMakeFiles/sle12-stats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sle12/CMakeFiles/sle12-stats.dir/depend

