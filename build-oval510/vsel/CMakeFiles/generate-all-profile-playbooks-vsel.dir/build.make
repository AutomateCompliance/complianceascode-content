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

# Utility rule file for generate-all-profile-playbooks-vsel.

# Include the progress variables for this target.
include vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/progress.make

vsel/CMakeFiles/generate-all-profile-playbooks-vsel: ansible/all-profile-playbooks-vsel


ansible/all-profile-playbooks-vsel: ssg-vsel-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[vsel-playbooks] generating Ansible Playbooks for all profiles in ssg-vsel-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ansible
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/build_profile_remediations.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ansible --template urn:xccdf:fix:script:ansible --extension yml build
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ansible/all-profile-playbooks-vsel

ssg-vsel-xccdf.xml: vsel/xccdf-linked.xml
ssg-vsel-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-vsel-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[vsel-content] generating ssg-vsel-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/sed -i s/oval-linked.xml/ssg-vsel-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/sed -i s/ocil-linked.xml/ssg-vsel-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-vsel-xccdf.xml

vsel/xccdf-linked.xml: vsel/xccdf-unlinked.xml
vsel/xccdf-linked.xml: vsel/oval-unlinked.xml
vsel/xccdf-linked.xml: vsel/ocil-unlinked.xml
vsel/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[vsel-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked.xml ssg

vsel/oval-linked.xml: vsel/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate vsel/oval-linked.xml

vsel/ocil-linked.xml: vsel/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate vsel/ocil-linked.xml

vsel/xccdf-unlinked.xml: vsel/xccdf-unlinked-ocilrefs.xml
vsel/xccdf-unlinked.xml: vsel/bash-fixes.xml
vsel/xccdf-unlinked.xml: vsel/ansible-fixes.xml
vsel/xccdf-unlinked.xml: vsel/puppet-fixes.xml
vsel/xccdf-unlinked.xml: vsel/anaconda-fixes.xml
vsel/xccdf-unlinked.xml: vsel/ignition-fixes.xml
vsel/xccdf-unlinked.xml: vsel/kubernetes-fixes.xml
vsel/xccdf-unlinked.xml: vsel/blueprint-fixes.xml
vsel/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[vsel-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked.xml

vsel/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[vsel-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/oval-unlinked.xml

vsel/ocil-unlinked.xml: vsel/xccdf-unlinked-resolved.xml
vsel/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[vsel-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ocil-unlinked.xml

vsel/xccdf-unlinked-ocilrefs.xml: vsel/xccdf-unlinked-resolved.xml
vsel/xccdf-unlinked-ocilrefs.xml: vsel/ocil-unlinked.xml
vsel/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[vsel-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xsltproc --stringparam product vsel --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml

vsel/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[vsel-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes/bash

vsel/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[vsel-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes/ansible

vsel/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[vsel-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes/puppet

vsel/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[vsel-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes/anaconda

vsel/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[vsel-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes/ignition

vsel/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[vsel-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes/kubernetes

vsel/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[vsel-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/fixes/blueprint

vsel/xccdf-unlinked-resolved.xml: vsel/shorthand.xml
vsel/xccdf-unlinked-resolved.xml: ../products/vsel/transforms/shorthand2xccdf.xslt
vsel/xccdf-unlinked-resolved.xml: ../products/vsel/transforms/constants.xslt
vsel/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[vsel-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/xccdf-unlinked-resolved.xml

vsel/shorthand.xml: bash-remediation-functions.xml
vsel/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
vsel/shorthand.xml: vsel/profiles
vsel/shorthand.xml: vsel/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[vsel-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/shorthand.xml

vsel/profiles: ../products/vsel/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[vsel-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/profiles/{name}.profile

vsel/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[vsel-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/checks/sce/metadata.json

generate-all-profile-playbooks-vsel: vsel/CMakeFiles/generate-all-profile-playbooks-vsel
generate-all-profile-playbooks-vsel: ansible/all-profile-playbooks-vsel
generate-all-profile-playbooks-vsel: ssg-vsel-xccdf.xml
generate-all-profile-playbooks-vsel: vsel/xccdf-linked.xml
generate-all-profile-playbooks-vsel: vsel/oval-linked.xml
generate-all-profile-playbooks-vsel: vsel/ocil-linked.xml
generate-all-profile-playbooks-vsel: vsel/xccdf-unlinked.xml
generate-all-profile-playbooks-vsel: vsel/oval-unlinked.xml
generate-all-profile-playbooks-vsel: vsel/ocil-unlinked.xml
generate-all-profile-playbooks-vsel: vsel/xccdf-unlinked-ocilrefs.xml
generate-all-profile-playbooks-vsel: vsel/bash-fixes.xml
generate-all-profile-playbooks-vsel: vsel/ansible-fixes.xml
generate-all-profile-playbooks-vsel: vsel/puppet-fixes.xml
generate-all-profile-playbooks-vsel: vsel/anaconda-fixes.xml
generate-all-profile-playbooks-vsel: vsel/ignition-fixes.xml
generate-all-profile-playbooks-vsel: vsel/kubernetes-fixes.xml
generate-all-profile-playbooks-vsel: vsel/blueprint-fixes.xml
generate-all-profile-playbooks-vsel: vsel/xccdf-unlinked-resolved.xml
generate-all-profile-playbooks-vsel: vsel/shorthand.xml
generate-all-profile-playbooks-vsel: vsel/profiles
generate-all-profile-playbooks-vsel: vsel/checks/sce/metadata.json
generate-all-profile-playbooks-vsel: vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/build.make

.PHONY : generate-all-profile-playbooks-vsel

# Rule to build all files generated by this target.
vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/build: generate-all-profile-playbooks-vsel

.PHONY : vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/build

vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel && $(CMAKE_COMMAND) -P CMakeFiles/generate-all-profile-playbooks-vsel.dir/cmake_clean.cmake
.PHONY : vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/clean

vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/vsel /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vsel/CMakeFiles/generate-all-profile-playbooks-vsel.dir/depend

