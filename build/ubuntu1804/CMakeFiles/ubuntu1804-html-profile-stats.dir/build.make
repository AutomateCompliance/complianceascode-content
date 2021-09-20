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

# Utility rule file for ubuntu1804-html-profile-stats.

# Include the progress variables for this target.
include ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/progress.make

ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats: ssg-ubuntu1804-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[ubuntu1804-html-profile-stats] generating per profile html statistics"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/profile_tool.py stats --format html --benchmark /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/profile-statistics/

ssg-ubuntu1804-xccdf.xml: ubuntu1804/xccdf-linked.xml
ssg-ubuntu1804-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-ubuntu1804-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[ubuntu1804-content] generating ssg-ubuntu1804-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/sed -i s/oval-linked.xml/ssg-ubuntu1804-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/sed -i s/ocil-linked.xml/ssg-ubuntu1804-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-ubuntu1804-xccdf.xml

ubuntu1804/xccdf-linked.xml: ubuntu1804/xccdf-unlinked.xml
ubuntu1804/xccdf-linked.xml: ubuntu1804/oval-unlinked.xml
ubuntu1804/xccdf-linked.xml: ubuntu1804/ocil-unlinked.xml
ubuntu1804/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[ubuntu1804-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked.xml ssg

ubuntu1804/oval-linked.xml: ubuntu1804/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ubuntu1804/oval-linked.xml

ubuntu1804/ocil-linked.xml: ubuntu1804/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ubuntu1804/ocil-linked.xml

ubuntu1804/xccdf-unlinked.xml: ubuntu1804/xccdf-unlinked-ocilrefs.xml
ubuntu1804/xccdf-unlinked.xml: ubuntu1804/bash-fixes.xml
ubuntu1804/xccdf-unlinked.xml: ubuntu1804/ansible-fixes.xml
ubuntu1804/xccdf-unlinked.xml: ubuntu1804/puppet-fixes.xml
ubuntu1804/xccdf-unlinked.xml: ubuntu1804/anaconda-fixes.xml
ubuntu1804/xccdf-unlinked.xml: ubuntu1804/ignition-fixes.xml
ubuntu1804/xccdf-unlinked.xml: ubuntu1804/kubernetes-fixes.xml
ubuntu1804/xccdf-unlinked.xml: ubuntu1804/blueprint-fixes.xml
ubuntu1804/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[ubuntu1804-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked.xml

ubuntu1804/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[ubuntu1804-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu1804/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu1804/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/oval-unlinked.xml

ubuntu1804/ocil-unlinked.xml: ubuntu1804/xccdf-unlinked-resolved.xml
ubuntu1804/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[ubuntu1804-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/ocil-unlinked.xml

ubuntu1804/xccdf-unlinked-ocilrefs.xml: ubuntu1804/xccdf-unlinked-resolved.xml
ubuntu1804/xccdf-unlinked-ocilrefs.xml: ubuntu1804/ocil-unlinked.xml
ubuntu1804/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[ubuntu1804-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xsltproc --stringparam product ubuntu1804 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked-resolved.xml

ubuntu1804/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[ubuntu1804-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/fixes/bash

ubuntu1804/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[ubuntu1804-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/fixes/ansible

ubuntu1804/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[ubuntu1804-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/fixes/puppet

ubuntu1804/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[ubuntu1804-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/fixes/anaconda

ubuntu1804/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[ubuntu1804-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/fixes/ignition

ubuntu1804/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[ubuntu1804-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/fixes/kubernetes

ubuntu1804/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[ubuntu1804-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/fixes/blueprint

ubuntu1804/xccdf-unlinked-resolved.xml: ubuntu1804/shorthand.xml
ubuntu1804/xccdf-unlinked-resolved.xml: ../products/ubuntu1804/transforms/shorthand2xccdf.xslt
ubuntu1804/xccdf-unlinked-resolved.xml: ../products/ubuntu1804/transforms/constants.xslt
ubuntu1804/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[ubuntu1804-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu1804/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/xccdf-unlinked-resolved.xml

ubuntu1804/shorthand.xml: bash-remediation-functions.xml
ubuntu1804/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
ubuntu1804/shorthand.xml: ubuntu1804/profiles
ubuntu1804/shorthand.xml: ubuntu1804/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[ubuntu1804-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu1804/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/shorthand.xml

ubuntu1804/profiles: ../products/ubuntu1804/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[ubuntu1804-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu1804/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/profiles/{name}.profile

ubuntu1804/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[ubuntu1804-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/checks/sce/metadata.json

ubuntu1804-html-profile-stats: ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats
ubuntu1804-html-profile-stats: ssg-ubuntu1804-xccdf.xml
ubuntu1804-html-profile-stats: ubuntu1804/xccdf-linked.xml
ubuntu1804-html-profile-stats: ubuntu1804/oval-linked.xml
ubuntu1804-html-profile-stats: ubuntu1804/ocil-linked.xml
ubuntu1804-html-profile-stats: ubuntu1804/xccdf-unlinked.xml
ubuntu1804-html-profile-stats: ubuntu1804/oval-unlinked.xml
ubuntu1804-html-profile-stats: ubuntu1804/ocil-unlinked.xml
ubuntu1804-html-profile-stats: ubuntu1804/xccdf-unlinked-ocilrefs.xml
ubuntu1804-html-profile-stats: ubuntu1804/bash-fixes.xml
ubuntu1804-html-profile-stats: ubuntu1804/ansible-fixes.xml
ubuntu1804-html-profile-stats: ubuntu1804/puppet-fixes.xml
ubuntu1804-html-profile-stats: ubuntu1804/anaconda-fixes.xml
ubuntu1804-html-profile-stats: ubuntu1804/ignition-fixes.xml
ubuntu1804-html-profile-stats: ubuntu1804/kubernetes-fixes.xml
ubuntu1804-html-profile-stats: ubuntu1804/blueprint-fixes.xml
ubuntu1804-html-profile-stats: ubuntu1804/xccdf-unlinked-resolved.xml
ubuntu1804-html-profile-stats: ubuntu1804/shorthand.xml
ubuntu1804-html-profile-stats: ubuntu1804/profiles
ubuntu1804-html-profile-stats: ubuntu1804/checks/sce/metadata.json
ubuntu1804-html-profile-stats: ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/build.make

.PHONY : ubuntu1804-html-profile-stats

# Rule to build all files generated by this target.
ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/build: ubuntu1804-html-profile-stats

.PHONY : ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/build

ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 && $(CMAKE_COMMAND) -P CMakeFiles/ubuntu1804-html-profile-stats.dir/cmake_clean.cmake
.PHONY : ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/clean

ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu1804 /home/chase/_work/complianceascode-content/complianceascode-content/build /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804 /home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ubuntu1804/CMakeFiles/ubuntu1804-html-profile-stats.dir/depend
