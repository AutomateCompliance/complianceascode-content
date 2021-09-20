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

# Utility rule file for generate-ssg-macos1015-guide-index.html.

# Include the progress variables for this target.
include macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/progress.make

macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html: guides/ssg-macos1015-guide-index.html


guides/ssg-macos1015-guide-index.html: ssg-macos1015-ds.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[macos1015-guides] generating HTML guides for all profiles in ssg-macos1015-ds.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/guides
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/build_all_guides.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-ds.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/guides build

ssg-macos1015-ds.xml: macos1015/ssg-macos1015-ds-base.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[macos1015-content] Updating data stream ssg-macos1015-ds.xml to 1.3"
	env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/update_sds_version.py --version 1.3 --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ssg-macos1015-ds-base.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-ds.xml
	/usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-ds.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-ds.xml

macos1015/ssg-macos1015-ds-base.xml: ssg-macos1015-xccdf-1.2.xml
macos1015/ssg-macos1015-ds-base.xml: ssg-macos1015-oval.xml
macos1015/ssg-macos1015-ds-base.xml: ssg-macos1015-ocil.xml
macos1015/ssg-macos1015-ds-base.xml: ssg-macos1015-cpe-dictionary.xml
macos1015/ssg-macos1015-ds-base.xml: ssg-macos1015-cpe-oval.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[macos1015-content] generating ssg-macos1015-ds-base.xml"
	/usr/bin/oscap ds sds-compose --skip-valid /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf-1.2.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ssg-macos1015-ds-base.xml
	/usr/bin/sed -i 's/schematron-version="[0-9].[0-9]"/schematron-version="1.2"/' /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ssg-macos1015-ds-base.xml
	/usr/bin/oscap ds sds-add --skip-valid /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-cpe-dictionary.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ssg-macos1015-ds-base.xml
	env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/sds_move_ocil_to_checks.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ssg-macos1015-ds-base.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ssg-macos1015-ds-base.xml

ssg-macos1015-xccdf-1.2.xml: ssg-macos1015-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[macos1015-content] generating ssg-macos1015-xccdf-1.2.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xsltproc --stringparam reverse_DNS org.ssgproject.content --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf-1.2.xml /usr/share/openscap/xsl/xccdf_1.1_to_1.2.xsl /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml

ssg-macos1015-oval.xml: macos1015/oval-linked.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[macos1015-content] generating ssg-macos1015-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/oval-linked.xml

ssg-macos1015-ocil.xml: macos1015/ocil-linked.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[macos1015-content] generating ssg-macos1015-ocil.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-ocil.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ocil-linked.xml

ssg-macos1015-cpe-dictionary.xml: macos1015/oval-unlinked.xml
ssg-macos1015-cpe-dictionary.xml: macos1015/shorthand.xml
ssg-macos1015-cpe-dictionary.xml: ../build-scripts/cpe_generate.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[macos1015-content] generating ssg-macos1015-cpe-dictionary.xml, ssg-macos1015-cpe-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/cpe_generate.py --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/macos1015/product.yml ssg /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/oval-unlinked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-cpe-dictionary.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-cpe-dictionary.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-cpe-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-cpe-oval.xml

ssg-macos1015-cpe-oval.xml: ssg-macos1015-cpe-dictionary.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ssg-macos1015-cpe-oval.xml

ssg-macos1015-xccdf.xml: macos1015/xccdf-linked.xml
ssg-macos1015-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-macos1015-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[macos1015-content] generating ssg-macos1015-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/sed -i s/oval-linked.xml/ssg-macos1015-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/sed -i s/ocil-linked.xml/ssg-macos1015-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-macos1015-xccdf.xml

macos1015/xccdf-linked.xml: macos1015/xccdf-unlinked.xml
macos1015/xccdf-linked.xml: macos1015/oval-unlinked.xml
macos1015/xccdf-linked.xml: macos1015/ocil-unlinked.xml
macos1015/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[macos1015-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked.xml ssg

macos1015/oval-linked.xml: macos1015/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate macos1015/oval-linked.xml

macos1015/ocil-linked.xml: macos1015/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate macos1015/ocil-linked.xml

macos1015/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[macos1015-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/macos1015/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/macos1015/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/oval-unlinked.xml

macos1015/shorthand.xml: bash-remediation-functions.xml
macos1015/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
macos1015/shorthand.xml: macos1015/profiles
macos1015/shorthand.xml: macos1015/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[macos1015-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/macos1015/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/shorthand.xml

macos1015/xccdf-unlinked.xml: macos1015/xccdf-unlinked-ocilrefs.xml
macos1015/xccdf-unlinked.xml: macos1015/bash-fixes.xml
macos1015/xccdf-unlinked.xml: macos1015/ansible-fixes.xml
macos1015/xccdf-unlinked.xml: macos1015/puppet-fixes.xml
macos1015/xccdf-unlinked.xml: macos1015/anaconda-fixes.xml
macos1015/xccdf-unlinked.xml: macos1015/ignition-fixes.xml
macos1015/xccdf-unlinked.xml: macos1015/kubernetes-fixes.xml
macos1015/xccdf-unlinked.xml: macos1015/blueprint-fixes.xml
macos1015/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[macos1015-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked.xml

macos1015/ocil-unlinked.xml: macos1015/xccdf-unlinked-resolved.xml
macos1015/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[macos1015-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ocil-unlinked.xml

macos1015/profiles: ../products/macos1015/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[macos1015-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/macos1015/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/profiles/{name}.profile

macos1015/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[macos1015-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/checks/sce/metadata.json

macos1015/xccdf-unlinked-ocilrefs.xml: macos1015/xccdf-unlinked-resolved.xml
macos1015/xccdf-unlinked-ocilrefs.xml: macos1015/ocil-unlinked.xml
macos1015/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[macos1015-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xsltproc --stringparam product macos1015 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked-resolved.xml

macos1015/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[macos1015-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/fixes/bash

macos1015/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[macos1015-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/fixes/ansible

macos1015/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "[macos1015-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/fixes/puppet

macos1015/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "[macos1015-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/fixes/anaconda

macos1015/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "[macos1015-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/fixes/ignition

macos1015/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "[macos1015-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/fixes/kubernetes

macos1015/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "[macos1015-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/fixes/blueprint

macos1015/xccdf-unlinked-resolved.xml: macos1015/shorthand.xml
macos1015/xccdf-unlinked-resolved.xml: ../products/macos1015/transforms/shorthand2xccdf.xslt
macos1015/xccdf-unlinked-resolved.xml: ../products/macos1015/transforms/constants.xslt
macos1015/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "[macos1015-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/macos1015/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/xccdf-unlinked-resolved.xml

generate-ssg-macos1015-guide-index.html: macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html
generate-ssg-macos1015-guide-index.html: guides/ssg-macos1015-guide-index.html
generate-ssg-macos1015-guide-index.html: ssg-macos1015-ds.xml
generate-ssg-macos1015-guide-index.html: macos1015/ssg-macos1015-ds-base.xml
generate-ssg-macos1015-guide-index.html: ssg-macos1015-xccdf-1.2.xml
generate-ssg-macos1015-guide-index.html: ssg-macos1015-oval.xml
generate-ssg-macos1015-guide-index.html: ssg-macos1015-ocil.xml
generate-ssg-macos1015-guide-index.html: ssg-macos1015-cpe-dictionary.xml
generate-ssg-macos1015-guide-index.html: ssg-macos1015-cpe-oval.xml
generate-ssg-macos1015-guide-index.html: ssg-macos1015-xccdf.xml
generate-ssg-macos1015-guide-index.html: macos1015/xccdf-linked.xml
generate-ssg-macos1015-guide-index.html: macos1015/oval-linked.xml
generate-ssg-macos1015-guide-index.html: macos1015/ocil-linked.xml
generate-ssg-macos1015-guide-index.html: macos1015/oval-unlinked.xml
generate-ssg-macos1015-guide-index.html: macos1015/shorthand.xml
generate-ssg-macos1015-guide-index.html: macos1015/xccdf-unlinked.xml
generate-ssg-macos1015-guide-index.html: macos1015/ocil-unlinked.xml
generate-ssg-macos1015-guide-index.html: macos1015/profiles
generate-ssg-macos1015-guide-index.html: macos1015/checks/sce/metadata.json
generate-ssg-macos1015-guide-index.html: macos1015/xccdf-unlinked-ocilrefs.xml
generate-ssg-macos1015-guide-index.html: macos1015/bash-fixes.xml
generate-ssg-macos1015-guide-index.html: macos1015/ansible-fixes.xml
generate-ssg-macos1015-guide-index.html: macos1015/puppet-fixes.xml
generate-ssg-macos1015-guide-index.html: macos1015/anaconda-fixes.xml
generate-ssg-macos1015-guide-index.html: macos1015/ignition-fixes.xml
generate-ssg-macos1015-guide-index.html: macos1015/kubernetes-fixes.xml
generate-ssg-macos1015-guide-index.html: macos1015/blueprint-fixes.xml
generate-ssg-macos1015-guide-index.html: macos1015/xccdf-unlinked-resolved.xml
generate-ssg-macos1015-guide-index.html: macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/build.make

.PHONY : generate-ssg-macos1015-guide-index.html

# Rule to build all files generated by this target.
macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/build: generate-ssg-macos1015-guide-index.html

.PHONY : macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/build

macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/cmake_clean.cmake
.PHONY : macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/clean

macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/macos1015 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : macos1015/CMakeFiles/generate-ssg-macos1015-guide-index.html.dir/depend

