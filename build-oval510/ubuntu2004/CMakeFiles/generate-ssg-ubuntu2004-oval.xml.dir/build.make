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

# Utility rule file for generate-ssg-ubuntu2004-oval.xml.

# Include the progress variables for this target.
include ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/progress.make

ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml: ssg-ubuntu2004-oval.xml


ssg-ubuntu2004-oval.xml: ubuntu2004/oval-linked.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[ubuntu2004-content] generating ssg-ubuntu2004-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-ubuntu2004-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/oval-linked.xml

ubuntu2004/xccdf-linked.xml: ubuntu2004/xccdf-unlinked.xml
ubuntu2004/xccdf-linked.xml: ubuntu2004/oval-unlinked.xml
ubuntu2004/xccdf-linked.xml: ubuntu2004/ocil-unlinked.xml
ubuntu2004/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[ubuntu2004-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked.xml ssg

ubuntu2004/oval-linked.xml: ubuntu2004/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ubuntu2004/oval-linked.xml

ubuntu2004/ocil-linked.xml: ubuntu2004/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ubuntu2004/ocil-linked.xml

ubuntu2004/xccdf-unlinked.xml: ubuntu2004/xccdf-unlinked-ocilrefs.xml
ubuntu2004/xccdf-unlinked.xml: ubuntu2004/bash-fixes.xml
ubuntu2004/xccdf-unlinked.xml: ubuntu2004/ansible-fixes.xml
ubuntu2004/xccdf-unlinked.xml: ubuntu2004/puppet-fixes.xml
ubuntu2004/xccdf-unlinked.xml: ubuntu2004/anaconda-fixes.xml
ubuntu2004/xccdf-unlinked.xml: ubuntu2004/ignition-fixes.xml
ubuntu2004/xccdf-unlinked.xml: ubuntu2004/kubernetes-fixes.xml
ubuntu2004/xccdf-unlinked.xml: ubuntu2004/blueprint-fixes.xml
ubuntu2004/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[ubuntu2004-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked.xml

ubuntu2004/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[ubuntu2004-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/oval-unlinked.xml

ubuntu2004/ocil-unlinked.xml: ubuntu2004/xccdf-unlinked-resolved.xml
ubuntu2004/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[ubuntu2004-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/ocil-unlinked.xml

ubuntu2004/xccdf-unlinked-ocilrefs.xml: ubuntu2004/xccdf-unlinked-resolved.xml
ubuntu2004/xccdf-unlinked-ocilrefs.xml: ubuntu2004/ocil-unlinked.xml
ubuntu2004/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[ubuntu2004-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xsltproc --stringparam product ubuntu2004 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked-resolved.xml

ubuntu2004/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[ubuntu2004-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/fixes/bash

ubuntu2004/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[ubuntu2004-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/fixes/ansible

ubuntu2004/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[ubuntu2004-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/fixes/puppet

ubuntu2004/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[ubuntu2004-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/fixes/anaconda

ubuntu2004/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[ubuntu2004-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/fixes/ignition

ubuntu2004/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[ubuntu2004-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/fixes/kubernetes

ubuntu2004/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[ubuntu2004-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/fixes/blueprint

ubuntu2004/xccdf-unlinked-resolved.xml: ubuntu2004/shorthand.xml
ubuntu2004/xccdf-unlinked-resolved.xml: ../products/ubuntu2004/transforms/shorthand2xccdf.xslt
ubuntu2004/xccdf-unlinked-resolved.xml: ../products/ubuntu2004/transforms/constants.xslt
ubuntu2004/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[ubuntu2004-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/xccdf-unlinked-resolved.xml

ubuntu2004/shorthand.xml: bash-remediation-functions.xml
ubuntu2004/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
ubuntu2004/shorthand.xml: ubuntu2004/profiles
ubuntu2004/shorthand.xml: ubuntu2004/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[ubuntu2004-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/shorthand.xml

ubuntu2004/profiles: ../products/ubuntu2004/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[ubuntu2004-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/profiles/{name}.profile

ubuntu2004/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[ubuntu2004-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/checks/sce/metadata.json

generate-ssg-ubuntu2004-oval.xml: ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml
generate-ssg-ubuntu2004-oval.xml: ssg-ubuntu2004-oval.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/xccdf-linked.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/oval-linked.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/ocil-linked.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/xccdf-unlinked.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/oval-unlinked.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/ocil-unlinked.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/xccdf-unlinked-ocilrefs.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/bash-fixes.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/ansible-fixes.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/puppet-fixes.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/anaconda-fixes.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/ignition-fixes.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/kubernetes-fixes.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/blueprint-fixes.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/xccdf-unlinked-resolved.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/shorthand.xml
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/profiles
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/checks/sce/metadata.json
generate-ssg-ubuntu2004-oval.xml: ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/build.make

.PHONY : generate-ssg-ubuntu2004-oval.xml

# Rule to build all files generated by this target.
ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/build: generate-ssg-ubuntu2004-oval.xml

.PHONY : ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/build

ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/cmake_clean.cmake
.PHONY : ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/clean

ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/ubuntu2004 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ubuntu2004/CMakeFiles/generate-ssg-ubuntu2004-oval.xml.dir/depend

