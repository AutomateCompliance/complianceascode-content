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

# Utility rule file for generate-ssg-debian9-xccdf-1.2.xml.

# Include the progress variables for this target.
include debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/progress.make

debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml: ssg-debian9-xccdf-1.2.xml


ssg-debian9-xccdf-1.2.xml: ssg-debian9-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[debian9-content] generating ssg-debian9-xccdf-1.2.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xsltproc --stringparam reverse_DNS org.ssgproject.content --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf-1.2.xml /usr/share/openscap/xsl/xccdf_1.1_to_1.2.xsl /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml

ssg-debian9-xccdf.xml: debian9/xccdf-linked.xml
ssg-debian9-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-debian9-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[debian9-content] generating ssg-debian9-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/sed -i s/oval-linked.xml/ssg-debian9-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/sed -i s/ocil-linked.xml/ssg-debian9-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian9-xccdf.xml

debian9/xccdf-linked.xml: debian9/xccdf-unlinked.xml
debian9/xccdf-linked.xml: debian9/oval-unlinked.xml
debian9/xccdf-linked.xml: debian9/ocil-unlinked.xml
debian9/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[debian9-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked.xml ssg

debian9/oval-linked.xml: debian9/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate debian9/oval-linked.xml

debian9/ocil-linked.xml: debian9/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate debian9/ocil-linked.xml

debian9/xccdf-unlinked.xml: debian9/xccdf-unlinked-ocilrefs.xml
debian9/xccdf-unlinked.xml: debian9/bash-fixes.xml
debian9/xccdf-unlinked.xml: debian9/ansible-fixes.xml
debian9/xccdf-unlinked.xml: debian9/puppet-fixes.xml
debian9/xccdf-unlinked.xml: debian9/anaconda-fixes.xml
debian9/xccdf-unlinked.xml: debian9/ignition-fixes.xml
debian9/xccdf-unlinked.xml: debian9/kubernetes-fixes.xml
debian9/xccdf-unlinked.xml: debian9/blueprint-fixes.xml
debian9/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[debian9-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked.xml

debian9/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[debian9-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/debian9/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/debian9/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/oval-unlinked.xml

debian9/ocil-unlinked.xml: debian9/xccdf-unlinked-resolved.xml
debian9/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[debian9-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/ocil-unlinked.xml

debian9/xccdf-unlinked-ocilrefs.xml: debian9/xccdf-unlinked-resolved.xml
debian9/xccdf-unlinked-ocilrefs.xml: debian9/ocil-unlinked.xml
debian9/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[debian9-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xsltproc --stringparam product debian9 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked-resolved.xml

debian9/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[debian9-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/fixes/bash

debian9/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[debian9-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/fixes/ansible

debian9/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[debian9-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/fixes/puppet

debian9/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[debian9-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/fixes/anaconda

debian9/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[debian9-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/fixes/ignition

debian9/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[debian9-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/fixes/kubernetes

debian9/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[debian9-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/fixes/blueprint

debian9/xccdf-unlinked-resolved.xml: debian9/shorthand.xml
debian9/xccdf-unlinked-resolved.xml: ../products/debian9/transforms/shorthand2xccdf.xslt
debian9/xccdf-unlinked-resolved.xml: ../products/debian9/transforms/constants.xslt
debian9/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[debian9-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/debian9/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/xccdf-unlinked-resolved.xml

debian9/shorthand.xml: bash-remediation-functions.xml
debian9/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
debian9/shorthand.xml: debian9/profiles
debian9/shorthand.xml: debian9/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[debian9-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/debian9/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/shorthand.xml

debian9/profiles: ../products/debian9/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[debian9-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/debian9/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/profiles/{name}.profile

debian9/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[debian9-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/checks/sce/metadata.json

generate-ssg-debian9-xccdf-1.2.xml: debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml
generate-ssg-debian9-xccdf-1.2.xml: ssg-debian9-xccdf-1.2.xml
generate-ssg-debian9-xccdf-1.2.xml: ssg-debian9-xccdf.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/xccdf-linked.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/oval-linked.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/ocil-linked.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/xccdf-unlinked.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/oval-unlinked.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/ocil-unlinked.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/xccdf-unlinked-ocilrefs.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/bash-fixes.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/ansible-fixes.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/puppet-fixes.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/anaconda-fixes.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/ignition-fixes.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/kubernetes-fixes.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/blueprint-fixes.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/xccdf-unlinked-resolved.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/shorthand.xml
generate-ssg-debian9-xccdf-1.2.xml: debian9/profiles
generate-ssg-debian9-xccdf-1.2.xml: debian9/checks/sce/metadata.json
generate-ssg-debian9-xccdf-1.2.xml: debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/build.make

.PHONY : generate-ssg-debian9-xccdf-1.2.xml

# Rule to build all files generated by this target.
debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/build: generate-ssg-debian9-xccdf-1.2.xml

.PHONY : debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/build

debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/cmake_clean.cmake
.PHONY : debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/clean

debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/debian9 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : debian9/CMakeFiles/generate-ssg-debian9-xccdf-1.2.xml.dir/depend

