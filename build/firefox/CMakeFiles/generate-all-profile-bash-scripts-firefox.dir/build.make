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

# Utility rule file for generate-all-profile-bash-scripts-firefox.

# Include the progress variables for this target.
include firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/progress.make

firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox: bash/all-profile-bash-scripts-firefox


bash/all-profile-bash-scripts-firefox: ssg-firefox-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[firefox-bash-scripts] generating Bash remediation scripts for all profiles in ssg-firefox-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/bash
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/build_profile_remediations.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/bash --template urn:xccdf:fix:script:sh --extension sh build
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build/bash/all-profile-bash-scripts-firefox

ssg-firefox-xccdf.xml: firefox/xccdf-linked.xml
ssg-firefox-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-firefox-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[firefox-content] generating ssg-firefox-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/sed -i s/oval-linked.xml/ssg-firefox-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/sed -i s/ocil-linked.xml/ssg-firefox-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-firefox-xccdf.xml

firefox/xccdf-linked.xml: firefox/xccdf-unlinked.xml
firefox/xccdf-linked.xml: firefox/oval-unlinked.xml
firefox/xccdf-linked.xml: firefox/ocil-unlinked.xml
firefox/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[firefox-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked.xml ssg

firefox/oval-linked.xml: firefox/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate firefox/oval-linked.xml

firefox/ocil-linked.xml: firefox/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate firefox/ocil-linked.xml

firefox/xccdf-unlinked.xml: firefox/xccdf-unlinked-ocilrefs.xml
firefox/xccdf-unlinked.xml: firefox/bash-fixes.xml
firefox/xccdf-unlinked.xml: firefox/ansible-fixes.xml
firefox/xccdf-unlinked.xml: firefox/puppet-fixes.xml
firefox/xccdf-unlinked.xml: firefox/anaconda-fixes.xml
firefox/xccdf-unlinked.xml: firefox/ignition-fixes.xml
firefox/xccdf-unlinked.xml: firefox/kubernetes-fixes.xml
firefox/xccdf-unlinked.xml: firefox/blueprint-fixes.xml
firefox/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[firefox-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked.xml

firefox/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[firefox-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/oval-unlinked.xml

firefox/ocil-unlinked.xml: firefox/xccdf-unlinked-resolved.xml
firefox/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[firefox-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/ocil-unlinked.xml

firefox/xccdf-unlinked-ocilrefs.xml: firefox/xccdf-unlinked-resolved.xml
firefox/xccdf-unlinked-ocilrefs.xml: firefox/ocil-unlinked.xml
firefox/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[firefox-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xsltproc --stringparam product firefox --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked-resolved.xml

firefox/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[firefox-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/fixes/bash

firefox/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[firefox-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/fixes/ansible

firefox/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[firefox-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/fixes/puppet

firefox/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[firefox-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/fixes/anaconda

firefox/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[firefox-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/fixes/ignition

firefox/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[firefox-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/fixes/kubernetes

firefox/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[firefox-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/fixes/blueprint

firefox/xccdf-unlinked-resolved.xml: firefox/shorthand.xml
firefox/xccdf-unlinked-resolved.xml: ../products/firefox/transforms/shorthand2xccdf.xslt
firefox/xccdf-unlinked-resolved.xml: ../products/firefox/transforms/constants.xslt
firefox/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
firefox/xccdf-unlinked-resolved.xml: ../shared/references/disa-stig-firefox-v5r1-xccdf-manual.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[firefox-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/add_stig_references.py --disa-stig /home/chase/_work/complianceascode-content/complianceascode-content/shared/references/disa-stig-firefox-v5r1-xccdf-manual.xml --unlinked-xccdf /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/xccdf-unlinked-resolved.xml

firefox/shorthand.xml: bash-remediation-functions.xml
firefox/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
firefox/shorthand.xml: firefox/profiles
firefox/shorthand.xml: firefox/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[firefox-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/shorthand.xml

firefox/profiles: ../products/firefox/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[firefox-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/profiles/{name}.profile

firefox/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[firefox-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/checks/sce/metadata.json

generate-all-profile-bash-scripts-firefox: firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox
generate-all-profile-bash-scripts-firefox: bash/all-profile-bash-scripts-firefox
generate-all-profile-bash-scripts-firefox: ssg-firefox-xccdf.xml
generate-all-profile-bash-scripts-firefox: firefox/xccdf-linked.xml
generate-all-profile-bash-scripts-firefox: firefox/oval-linked.xml
generate-all-profile-bash-scripts-firefox: firefox/ocil-linked.xml
generate-all-profile-bash-scripts-firefox: firefox/xccdf-unlinked.xml
generate-all-profile-bash-scripts-firefox: firefox/oval-unlinked.xml
generate-all-profile-bash-scripts-firefox: firefox/ocil-unlinked.xml
generate-all-profile-bash-scripts-firefox: firefox/xccdf-unlinked-ocilrefs.xml
generate-all-profile-bash-scripts-firefox: firefox/bash-fixes.xml
generate-all-profile-bash-scripts-firefox: firefox/ansible-fixes.xml
generate-all-profile-bash-scripts-firefox: firefox/puppet-fixes.xml
generate-all-profile-bash-scripts-firefox: firefox/anaconda-fixes.xml
generate-all-profile-bash-scripts-firefox: firefox/ignition-fixes.xml
generate-all-profile-bash-scripts-firefox: firefox/kubernetes-fixes.xml
generate-all-profile-bash-scripts-firefox: firefox/blueprint-fixes.xml
generate-all-profile-bash-scripts-firefox: firefox/xccdf-unlinked-resolved.xml
generate-all-profile-bash-scripts-firefox: firefox/shorthand.xml
generate-all-profile-bash-scripts-firefox: firefox/profiles
generate-all-profile-bash-scripts-firefox: firefox/checks/sce/metadata.json
generate-all-profile-bash-scripts-firefox: firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/build.make

.PHONY : generate-all-profile-bash-scripts-firefox

# Rule to build all files generated by this target.
firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/build: generate-all-profile-bash-scripts-firefox

.PHONY : firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/build

firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox && $(CMAKE_COMMAND) -P CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/cmake_clean.cmake
.PHONY : firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/clean

firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/firefox /home/chase/_work/complianceascode-content/complianceascode-content/build /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox /home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : firefox/CMakeFiles/generate-all-profile-bash-scripts-firefox.dir/depend

