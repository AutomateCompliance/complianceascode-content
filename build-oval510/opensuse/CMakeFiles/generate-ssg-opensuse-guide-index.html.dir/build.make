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

# Utility rule file for generate-ssg-opensuse-guide-index.html.

# Include the progress variables for this target.
include opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/progress.make

opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html: guides/ssg-opensuse-guide-index.html


guides/ssg-opensuse-guide-index.html: ssg-opensuse-ds.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[opensuse-guides] generating HTML guides for all profiles in ssg-opensuse-ds.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/guides
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/build_all_guides.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-ds.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/guides build

ssg-opensuse-ds.xml: opensuse/ssg-opensuse-ds-base.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[opensuse-content] Updating data stream ssg-opensuse-ds.xml to 1.3"
	env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/update_sds_version.py --version 1.3 --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ssg-opensuse-ds-base.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-ds.xml
	/usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-ds.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-ds.xml

opensuse/ssg-opensuse-ds-base.xml: ssg-opensuse-xccdf-1.2.xml
opensuse/ssg-opensuse-ds-base.xml: ssg-opensuse-oval.xml
opensuse/ssg-opensuse-ds-base.xml: ssg-opensuse-ocil.xml
opensuse/ssg-opensuse-ds-base.xml: ssg-opensuse-cpe-dictionary.xml
opensuse/ssg-opensuse-ds-base.xml: ssg-opensuse-cpe-oval.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[opensuse-content] generating ssg-opensuse-ds-base.xml"
	/usr/bin/oscap ds sds-compose --skip-valid /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf-1.2.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ssg-opensuse-ds-base.xml
	/usr/bin/sed -i 's/schematron-version="[0-9].[0-9]"/schematron-version="1.2"/' /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ssg-opensuse-ds-base.xml
	/usr/bin/oscap ds sds-add --skip-valid /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-cpe-dictionary.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ssg-opensuse-ds-base.xml
	env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/sds_move_ocil_to_checks.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ssg-opensuse-ds-base.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ssg-opensuse-ds-base.xml

ssg-opensuse-xccdf-1.2.xml: ssg-opensuse-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[opensuse-content] generating ssg-opensuse-xccdf-1.2.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xsltproc --stringparam reverse_DNS org.ssgproject.content --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf-1.2.xml /usr/share/openscap/xsl/xccdf_1.1_to_1.2.xsl /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml

ssg-opensuse-oval.xml: opensuse/oval-linked.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[opensuse-content] generating ssg-opensuse-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/oval-linked.xml

ssg-opensuse-ocil.xml: opensuse/ocil-linked.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[opensuse-content] generating ssg-opensuse-ocil.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-ocil.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ocil-linked.xml

ssg-opensuse-cpe-dictionary.xml: opensuse/oval-unlinked.xml
ssg-opensuse-cpe-dictionary.xml: opensuse/shorthand.xml
ssg-opensuse-cpe-dictionary.xml: ../build-scripts/cpe_generate.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[opensuse-content] generating ssg-opensuse-cpe-dictionary.xml, ssg-opensuse-cpe-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/cpe_generate.py --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse/product.yml ssg /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/oval-unlinked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-cpe-dictionary.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-cpe-dictionary.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-cpe-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-cpe-oval.xml

ssg-opensuse-cpe-oval.xml: ssg-opensuse-cpe-dictionary.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ssg-opensuse-cpe-oval.xml

ssg-opensuse-xccdf.xml: opensuse/xccdf-linked.xml
ssg-opensuse-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-opensuse-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[opensuse-content] generating ssg-opensuse-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/sed -i s/oval-linked.xml/ssg-opensuse-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/sed -i s/ocil-linked.xml/ssg-opensuse-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml

opensuse/xccdf-linked.xml: opensuse/xccdf-unlinked.xml
opensuse/xccdf-linked.xml: opensuse/oval-unlinked.xml
opensuse/xccdf-linked.xml: opensuse/ocil-unlinked.xml
opensuse/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[opensuse-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked.xml ssg

opensuse/oval-linked.xml: opensuse/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate opensuse/oval-linked.xml

opensuse/ocil-linked.xml: opensuse/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate opensuse/ocil-linked.xml

opensuse/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[opensuse-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/oval-unlinked.xml

opensuse/shorthand.xml: bash-remediation-functions.xml
opensuse/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
opensuse/shorthand.xml: opensuse/profiles
opensuse/shorthand.xml: opensuse/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[opensuse-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/shorthand.xml

opensuse/xccdf-unlinked.xml: opensuse/xccdf-unlinked-ocilrefs.xml
opensuse/xccdf-unlinked.xml: opensuse/bash-fixes.xml
opensuse/xccdf-unlinked.xml: opensuse/ansible-fixes.xml
opensuse/xccdf-unlinked.xml: opensuse/puppet-fixes.xml
opensuse/xccdf-unlinked.xml: opensuse/anaconda-fixes.xml
opensuse/xccdf-unlinked.xml: opensuse/ignition-fixes.xml
opensuse/xccdf-unlinked.xml: opensuse/kubernetes-fixes.xml
opensuse/xccdf-unlinked.xml: opensuse/blueprint-fixes.xml
opensuse/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[opensuse-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked.xml

opensuse/ocil-unlinked.xml: opensuse/xccdf-unlinked-resolved.xml
opensuse/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[opensuse-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ocil-unlinked.xml

opensuse/profiles: ../products/opensuse/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[opensuse-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/profiles/{name}.profile

opensuse/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[opensuse-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/checks/sce/metadata.json

opensuse/xccdf-unlinked-ocilrefs.xml: opensuse/xccdf-unlinked-resolved.xml
opensuse/xccdf-unlinked-ocilrefs.xml: opensuse/ocil-unlinked.xml
opensuse/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[opensuse-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xsltproc --stringparam product opensuse --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked-resolved.xml

opensuse/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[opensuse-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/fixes/bash

opensuse/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[opensuse-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/fixes/ansible

opensuse/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "[opensuse-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/fixes/puppet

opensuse/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "[opensuse-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/fixes/anaconda

opensuse/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "[opensuse-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/fixes/ignition

opensuse/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "[opensuse-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/fixes/kubernetes

opensuse/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "[opensuse-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/fixes/blueprint

opensuse/xccdf-unlinked-resolved.xml: opensuse/shorthand.xml
opensuse/xccdf-unlinked-resolved.xml: ../products/opensuse/transforms/shorthand2xccdf.xslt
opensuse/xccdf-unlinked-resolved.xml: ../products/opensuse/transforms/constants.xslt
opensuse/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "[opensuse-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/xccdf-unlinked-resolved.xml

generate-ssg-opensuse-guide-index.html: opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html
generate-ssg-opensuse-guide-index.html: guides/ssg-opensuse-guide-index.html
generate-ssg-opensuse-guide-index.html: ssg-opensuse-ds.xml
generate-ssg-opensuse-guide-index.html: opensuse/ssg-opensuse-ds-base.xml
generate-ssg-opensuse-guide-index.html: ssg-opensuse-xccdf-1.2.xml
generate-ssg-opensuse-guide-index.html: ssg-opensuse-oval.xml
generate-ssg-opensuse-guide-index.html: ssg-opensuse-ocil.xml
generate-ssg-opensuse-guide-index.html: ssg-opensuse-cpe-dictionary.xml
generate-ssg-opensuse-guide-index.html: ssg-opensuse-cpe-oval.xml
generate-ssg-opensuse-guide-index.html: ssg-opensuse-xccdf.xml
generate-ssg-opensuse-guide-index.html: opensuse/xccdf-linked.xml
generate-ssg-opensuse-guide-index.html: opensuse/oval-linked.xml
generate-ssg-opensuse-guide-index.html: opensuse/ocil-linked.xml
generate-ssg-opensuse-guide-index.html: opensuse/oval-unlinked.xml
generate-ssg-opensuse-guide-index.html: opensuse/shorthand.xml
generate-ssg-opensuse-guide-index.html: opensuse/xccdf-unlinked.xml
generate-ssg-opensuse-guide-index.html: opensuse/ocil-unlinked.xml
generate-ssg-opensuse-guide-index.html: opensuse/profiles
generate-ssg-opensuse-guide-index.html: opensuse/checks/sce/metadata.json
generate-ssg-opensuse-guide-index.html: opensuse/xccdf-unlinked-ocilrefs.xml
generate-ssg-opensuse-guide-index.html: opensuse/bash-fixes.xml
generate-ssg-opensuse-guide-index.html: opensuse/ansible-fixes.xml
generate-ssg-opensuse-guide-index.html: opensuse/puppet-fixes.xml
generate-ssg-opensuse-guide-index.html: opensuse/anaconda-fixes.xml
generate-ssg-opensuse-guide-index.html: opensuse/ignition-fixes.xml
generate-ssg-opensuse-guide-index.html: opensuse/kubernetes-fixes.xml
generate-ssg-opensuse-guide-index.html: opensuse/blueprint-fixes.xml
generate-ssg-opensuse-guide-index.html: opensuse/xccdf-unlinked-resolved.xml
generate-ssg-opensuse-guide-index.html: opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/build.make

.PHONY : generate-ssg-opensuse-guide-index.html

# Rule to build all files generated by this target.
opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/build: generate-ssg-opensuse-guide-index.html

.PHONY : opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/build

opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/cmake_clean.cmake
.PHONY : opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/clean

opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opensuse/CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/depend

