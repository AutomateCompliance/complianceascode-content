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

# Utility rule file for generate-all-profile-bash-scripts-jre.

# Include the progress variables for this target.
include jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/progress.make

jre/CMakeFiles/generate-all-profile-bash-scripts-jre: bash/all-profile-bash-scripts-jre


bash/all-profile-bash-scripts-jre: ssg-jre-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[jre-bash-scripts] generating Bash remediation scripts for all profiles in ssg-jre-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/build_profile_remediations.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash --template urn:xccdf:fix:script:sh --extension sh build
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash/all-profile-bash-scripts-jre

ssg-jre-xccdf.xml: jre/xccdf-linked.xml
ssg-jre-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-jre-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[jre-content] generating ssg-jre-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/sed -i s/oval-linked.xml/ssg-jre-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/sed -i s/ocil-linked.xml/ssg-jre-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-jre-xccdf.xml

jre/xccdf-linked.xml: jre/xccdf-unlinked.xml
jre/xccdf-linked.xml: jre/oval-unlinked.xml
jre/xccdf-linked.xml: jre/ocil-unlinked.xml
jre/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[jre-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked.xml ssg

jre/oval-linked.xml: jre/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate jre/oval-linked.xml

jre/ocil-linked.xml: jre/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate jre/ocil-linked.xml

jre/xccdf-unlinked.xml: jre/xccdf-unlinked-ocilrefs.xml
jre/xccdf-unlinked.xml: jre/bash-fixes.xml
jre/xccdf-unlinked.xml: jre/ansible-fixes.xml
jre/xccdf-unlinked.xml: jre/puppet-fixes.xml
jre/xccdf-unlinked.xml: jre/anaconda-fixes.xml
jre/xccdf-unlinked.xml: jre/ignition-fixes.xml
jre/xccdf-unlinked.xml: jre/kubernetes-fixes.xml
jre/xccdf-unlinked.xml: jre/blueprint-fixes.xml
jre/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[jre-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked.xml

jre/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[jre-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/jre/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/jre/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/oval-unlinked.xml

jre/ocil-unlinked.xml: jre/xccdf-unlinked-resolved.xml
jre/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[jre-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/ocil-unlinked.xml

jre/xccdf-unlinked-ocilrefs.xml: jre/xccdf-unlinked-resolved.xml
jre/xccdf-unlinked-ocilrefs.xml: jre/ocil-unlinked.xml
jre/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[jre-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xsltproc --stringparam product jre --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-resolved.xml

jre/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[jre-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/fixes/bash

jre/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[jre-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/fixes/ansible

jre/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[jre-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/fixes/puppet

jre/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[jre-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/fixes/anaconda

jre/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[jre-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/fixes/ignition

jre/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[jre-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/fixes/kubernetes

jre/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[jre-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/fixes/blueprint

jre/xccdf-unlinked-resolved.xml: jre/shorthand.xml
jre/xccdf-unlinked-resolved.xml: ../products/jre/transforms/shorthand2xccdf.xslt
jre/xccdf-unlinked-resolved.xml: ../products/jre/transforms/constants.xslt
jre/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[jre-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/jre/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/xccdf-unlinked-resolved.xml

jre/shorthand.xml: bash-remediation-functions.xml
jre/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
jre/shorthand.xml: jre/profiles
jre/shorthand.xml: jre/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[jre-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/jre/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/shorthand.xml

jre/profiles: ../products/jre/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[jre-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/jre/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/profiles/{name}.profile

jre/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[jre-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/checks/sce/metadata.json

generate-all-profile-bash-scripts-jre: jre/CMakeFiles/generate-all-profile-bash-scripts-jre
generate-all-profile-bash-scripts-jre: bash/all-profile-bash-scripts-jre
generate-all-profile-bash-scripts-jre: ssg-jre-xccdf.xml
generate-all-profile-bash-scripts-jre: jre/xccdf-linked.xml
generate-all-profile-bash-scripts-jre: jre/oval-linked.xml
generate-all-profile-bash-scripts-jre: jre/ocil-linked.xml
generate-all-profile-bash-scripts-jre: jre/xccdf-unlinked.xml
generate-all-profile-bash-scripts-jre: jre/oval-unlinked.xml
generate-all-profile-bash-scripts-jre: jre/ocil-unlinked.xml
generate-all-profile-bash-scripts-jre: jre/xccdf-unlinked-ocilrefs.xml
generate-all-profile-bash-scripts-jre: jre/bash-fixes.xml
generate-all-profile-bash-scripts-jre: jre/ansible-fixes.xml
generate-all-profile-bash-scripts-jre: jre/puppet-fixes.xml
generate-all-profile-bash-scripts-jre: jre/anaconda-fixes.xml
generate-all-profile-bash-scripts-jre: jre/ignition-fixes.xml
generate-all-profile-bash-scripts-jre: jre/kubernetes-fixes.xml
generate-all-profile-bash-scripts-jre: jre/blueprint-fixes.xml
generate-all-profile-bash-scripts-jre: jre/xccdf-unlinked-resolved.xml
generate-all-profile-bash-scripts-jre: jre/shorthand.xml
generate-all-profile-bash-scripts-jre: jre/profiles
generate-all-profile-bash-scripts-jre: jre/checks/sce/metadata.json
generate-all-profile-bash-scripts-jre: jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/build.make

.PHONY : generate-all-profile-bash-scripts-jre

# Rule to build all files generated by this target.
jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/build: generate-all-profile-bash-scripts-jre

.PHONY : jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/build

jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre && $(CMAKE_COMMAND) -P CMakeFiles/generate-all-profile-bash-scripts-jre.dir/cmake_clean.cmake
.PHONY : jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/clean

jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/jre /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : jre/CMakeFiles/generate-all-profile-bash-scripts-jre.dir/depend

