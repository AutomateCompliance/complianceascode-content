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

# Utility rule file for generate-all-profile-playbooks-ol7.

# Include the progress variables for this target.
include ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/progress.make

ol7/CMakeFiles/generate-all-profile-playbooks-ol7: ansible/all-profile-playbooks-ol7


ansible/all-profile-playbooks-ol7: ssg-ol7-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[ol7-playbooks] generating Ansible Playbooks for all profiles in ssg-ol7-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ansible
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/build_profile_remediations.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ansible --template urn:xccdf:fix:script:ansible --extension yml build
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ansible/all-profile-playbooks-ol7

ssg-ol7-xccdf.xml: ol7/xccdf-linked.xml
ssg-ol7-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-ol7-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[ol7-content] generating ssg-ol7-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/sed -i s/oval-linked.xml/ssg-ol7-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/sed -i s/ocil-linked.xml/ssg-ol7-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ol7-xccdf.xml

ol7/xccdf-linked.xml: ol7/xccdf-unlinked.xml
ol7/xccdf-linked.xml: ol7/oval-unlinked.xml
ol7/xccdf-linked.xml: ol7/ocil-unlinked.xml
ol7/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[ol7-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked.xml ssg

ol7/oval-linked.xml: ol7/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ol7/oval-linked.xml

ol7/ocil-linked.xml: ol7/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ol7/ocil-linked.xml

ol7/xccdf-unlinked.xml: ol7/xccdf-unlinked-ocilrefs.xml
ol7/xccdf-unlinked.xml: ol7/bash-fixes.xml
ol7/xccdf-unlinked.xml: ol7/ansible-fixes.xml
ol7/xccdf-unlinked.xml: ol7/puppet-fixes.xml
ol7/xccdf-unlinked.xml: ol7/anaconda-fixes.xml
ol7/xccdf-unlinked.xml: ol7/ignition-fixes.xml
ol7/xccdf-unlinked.xml: ol7/kubernetes-fixes.xml
ol7/xccdf-unlinked.xml: ol7/blueprint-fixes.xml
ol7/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[ol7-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked.xml

ol7/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[ol7-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/oval-unlinked.xml

ol7/ocil-unlinked.xml: ol7/xccdf-unlinked-resolved.xml
ol7/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[ol7-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/ocil-unlinked.xml

ol7/xccdf-unlinked-ocilrefs.xml: ol7/xccdf-unlinked-resolved.xml
ol7/xccdf-unlinked-ocilrefs.xml: ol7/ocil-unlinked.xml
ol7/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[ol7-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xsltproc --stringparam product ol7 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked-resolved.xml

ol7/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[ol7-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/fixes/bash

ol7/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[ol7-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/fixes/ansible

ol7/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[ol7-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/fixes/puppet

ol7/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[ol7-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/fixes/anaconda

ol7/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[ol7-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/fixes/ignition

ol7/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[ol7-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/fixes/kubernetes

ol7/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[ol7-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/fixes/blueprint

ol7/xccdf-unlinked-resolved.xml: ol7/shorthand.xml
ol7/xccdf-unlinked-resolved.xml: ../products/ol7/transforms/shorthand2xccdf.xslt
ol7/xccdf-unlinked-resolved.xml: ../products/ol7/transforms/constants.xslt
ol7/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
ol7/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-ol7-v2r4-xccdf-manual.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[ol7-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/add_stig_references.py --disa-stig /home/chase/_work/complianceascode-content/complianceascode-content/shared/references/disa-stig-ol7-v2r4-xccdf-manual.xml --unlinked-xccdf /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/xccdf-unlinked-resolved.xml

ol7/shorthand.xml: bash-remediation-functions.xml
ol7/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
ol7/shorthand.xml: ol7/profiles
ol7/shorthand.xml: ol7/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[ol7-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/shorthand.xml

ol7/profiles: ../products/ol7/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[ol7-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/profiles/{name}.profile

ol7/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[ol7-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/checks/sce/metadata.json

generate-all-profile-playbooks-ol7: ol7/CMakeFiles/generate-all-profile-playbooks-ol7
generate-all-profile-playbooks-ol7: ansible/all-profile-playbooks-ol7
generate-all-profile-playbooks-ol7: ssg-ol7-xccdf.xml
generate-all-profile-playbooks-ol7: ol7/xccdf-linked.xml
generate-all-profile-playbooks-ol7: ol7/oval-linked.xml
generate-all-profile-playbooks-ol7: ol7/ocil-linked.xml
generate-all-profile-playbooks-ol7: ol7/xccdf-unlinked.xml
generate-all-profile-playbooks-ol7: ol7/oval-unlinked.xml
generate-all-profile-playbooks-ol7: ol7/ocil-unlinked.xml
generate-all-profile-playbooks-ol7: ol7/xccdf-unlinked-ocilrefs.xml
generate-all-profile-playbooks-ol7: ol7/bash-fixes.xml
generate-all-profile-playbooks-ol7: ol7/ansible-fixes.xml
generate-all-profile-playbooks-ol7: ol7/puppet-fixes.xml
generate-all-profile-playbooks-ol7: ol7/anaconda-fixes.xml
generate-all-profile-playbooks-ol7: ol7/ignition-fixes.xml
generate-all-profile-playbooks-ol7: ol7/kubernetes-fixes.xml
generate-all-profile-playbooks-ol7: ol7/blueprint-fixes.xml
generate-all-profile-playbooks-ol7: ol7/xccdf-unlinked-resolved.xml
generate-all-profile-playbooks-ol7: ol7/shorthand.xml
generate-all-profile-playbooks-ol7: ol7/profiles
generate-all-profile-playbooks-ol7: ol7/checks/sce/metadata.json
generate-all-profile-playbooks-ol7: ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/build.make

.PHONY : generate-all-profile-playbooks-ol7

# Rule to build all files generated by this target.
ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/build: generate-all-profile-playbooks-ol7

.PHONY : ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/build

ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 && $(CMAKE_COMMAND) -P CMakeFiles/generate-all-profile-playbooks-ol7.dir/cmake_clean.cmake
.PHONY : ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/clean

ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/ol7 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ol7/CMakeFiles/generate-all-profile-playbooks-ol7.dir/depend

