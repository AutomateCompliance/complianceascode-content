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

# Utility rule file for generate-ssg-fuse6-guide-index.html.

# Include the progress variables for this target.
include fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/progress.make

fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html: guides/ssg-fuse6-guide-index.html


guides/ssg-fuse6-guide-index.html: ssg-fuse6-ds.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[fuse6-guides] generating HTML guides for all profiles in ssg-fuse6-ds.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/guides
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/build_all_guides.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-ds.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/guides build

ssg-fuse6-ds.xml: fuse6/ssg-fuse6-ds-base.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[fuse6-content] Updating data stream ssg-fuse6-ds.xml to 1.3"
	env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/update_sds_version.py --version 1.3 --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ssg-fuse6-ds-base.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-ds.xml
	/usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-ds.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-ds.xml

fuse6/ssg-fuse6-ds-base.xml: ssg-fuse6-xccdf-1.2.xml
fuse6/ssg-fuse6-ds-base.xml: ssg-fuse6-oval.xml
fuse6/ssg-fuse6-ds-base.xml: ssg-fuse6-ocil.xml
fuse6/ssg-fuse6-ds-base.xml: ssg-fuse6-cpe-dictionary.xml
fuse6/ssg-fuse6-ds-base.xml: ssg-fuse6-cpe-oval.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "[fuse6-content] generating ssg-fuse6-ds-base.xml"
	/usr/bin/oscap ds sds-compose --skip-valid /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf-1.2.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ssg-fuse6-ds-base.xml
	/usr/bin/sed -i 's/schematron-version="[0-9].[0-9]"/schematron-version="1.2"/' /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ssg-fuse6-ds-base.xml
	/usr/bin/oscap ds sds-add --skip-valid /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-cpe-dictionary.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ssg-fuse6-ds-base.xml
	env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/sds_move_ocil_to_checks.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ssg-fuse6-ds-base.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ssg-fuse6-ds-base.xml

ssg-fuse6-xccdf-1.2.xml: ssg-fuse6-xccdf.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "[fuse6-content] generating ssg-fuse6-xccdf-1.2.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xsltproc --stringparam reverse_DNS org.ssgproject.content --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf-1.2.xml /usr/share/openscap/xsl/xccdf_1.1_to_1.2.xsl /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml

ssg-fuse6-oval.xml: fuse6/oval-linked.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "[fuse6-content] generating ssg-fuse6-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/oval-linked.xml

ssg-fuse6-ocil.xml: fuse6/ocil-linked.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "[fuse6-content] generating ssg-fuse6-ocil.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-ocil.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ocil-linked.xml

ssg-fuse6-cpe-dictionary.xml: fuse6/oval-unlinked.xml
ssg-fuse6-cpe-dictionary.xml: fuse6/shorthand.xml
ssg-fuse6-cpe-dictionary.xml: ../build-scripts/cpe_generate.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "[fuse6-content] generating ssg-fuse6-cpe-dictionary.xml, ssg-fuse6-cpe-oval.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/cpe_generate.py --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/fuse6/product.yml ssg /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/oval-unlinked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-cpe-dictionary.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-cpe-dictionary.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-cpe-oval.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-cpe-oval.xml

ssg-fuse6-cpe-oval.xml: ssg-fuse6-cpe-dictionary.xml
	@$(CMAKE_COMMAND) -E touch_nocreate ssg-fuse6-cpe-oval.xml

ssg-fuse6-xccdf.xml: fuse6/xccdf-linked.xml
ssg-fuse6-xccdf.xml: ../shared/transforms/shared_xccdf-removeaux.xslt
ssg-fuse6-xccdf.xml: ../build-scripts/unselect_empty_xccdf_groups.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "[fuse6-content] generating ssg-fuse6-xccdf.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xsltproc --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/shared_xccdf-removeaux.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-linked.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/sed -i s/oval-linked.xml/ssg-fuse6-oval.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/sed -i s/ocil-linked.xml/ssg-fuse6-ocil.xml/g /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/unselect_empty_xccdf_groups.py --input /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --nsclean --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-fuse6-xccdf.xml

fuse6/xccdf-linked.xml: fuse6/xccdf-unlinked.xml
fuse6/xccdf-linked.xml: fuse6/oval-unlinked.xml
fuse6/xccdf-linked.xml: fuse6/ocil-unlinked.xml
fuse6/xccdf-linked.xml: ../build-scripts/relabel_ids.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "[fuse6-content] linking IDs, generating xccdf-linked.xml, oval-linked.xml, ocil-linked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/relabel_ids.py /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked.xml ssg

fuse6/oval-linked.xml: fuse6/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate fuse6/oval-linked.xml

fuse6/ocil-linked.xml: fuse6/xccdf-linked.xml
	@$(CMAKE_COMMAND) -E touch_nocreate fuse6/ocil-linked.xml

fuse6/oval-unlinked.xml: ../build-scripts/combine_ovals.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "[fuse6-content] generating oval-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/combine_ovals.py --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/fuse6/product.yml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/checks/shared/oval /home/chase/_work/complianceascode-content/complianceascode-content/shared/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/checks/oval /home/chase/_work/complianceascode-content/complianceascode-content/products/fuse6/checks/oval
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/oval-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/oval-unlinked.xml

fuse6/shorthand.xml: bash-remediation-functions.xml
fuse6/shorthand.xml: ../build-scripts/yaml_to_shorthand.py
fuse6/shorthand.xml: fuse6/profiles
fuse6/shorthand.xml: fuse6/checks/sce/metadata.json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "[fuse6-content] generating shorthand.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/cmake -E remove_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/rules
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/yaml_to_shorthand.py --resolved-rules-dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/rules --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/fuse6/product.yml --bash-remediation-fns /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash-remediation-functions.xml --profiles-root /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/profiles --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/shorthand.xml --sce-metadata /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/checks/sce/metadata.json
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/shorthand.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/shorthand.xml

fuse6/xccdf-unlinked.xml: fuse6/xccdf-unlinked-ocilrefs.xml
fuse6/xccdf-unlinked.xml: fuse6/bash-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/ansible-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/puppet-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/anaconda-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/ignition-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/kubernetes-fixes.xml
fuse6/xccdf-unlinked.xml: fuse6/blueprint-fixes.xml
fuse6/xccdf-unlinked.xml: ../shared/transforms/xccdf-addremediations.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "[fuse6-content] generating xccdf-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xsltproc --stringparam bash_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/bash-fixes.xml --stringparam ansible_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ansible-fixes.xml --stringparam puppet_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/puppet-fixes.xml --stringparam anaconda_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/anaconda-fixes.xml --stringparam ignition_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ignition-fixes.xml --stringparam kubernetes_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/kubernetes-fixes.xml --stringparam blueprint_remediations /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/blueprint-fixes.xml --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-addremediations.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked-ocilrefs.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked.xml

fuse6/ocil-unlinked.xml: fuse6/xccdf-unlinked-resolved.xml
fuse6/ocil-unlinked.xml: ../shared/transforms/xccdf-create-ocil.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "[fuse6-content] generating ocil-unlinked.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-create-ocil.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked-resolved.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xmllint --format --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ocil-unlinked.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ocil-unlinked.xml

fuse6/profiles: ../products/fuse6/profiles
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "[fuse6-content] compiling profiles"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/profiles
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/compile_profiles.py --controls-dir /home/chase/_work/complianceascode-content/complianceascode-content/controls --build-config-yaml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/build_config.yml --product-yaml /home/chase/_work/complianceascode-content/complianceascode-content/products/fuse6/product.yml -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/profiles/{name}.profile

fuse6/checks/sce/metadata.json:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "[fuse6-content] generating sce/metadata.json"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/cmake -E make_directory /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/checks/sce
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/cmake -E touch /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/checks/sce/metadata.json

fuse6/xccdf-unlinked-ocilrefs.xml: fuse6/xccdf-unlinked-resolved.xml
fuse6/xccdf-unlinked-ocilrefs.xml: fuse6/ocil-unlinked.xml
fuse6/xccdf-unlinked-ocilrefs.xml: ../shared/transforms/xccdf-ocilcheck2ref.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "[fuse6-content] generating xccdf-unlinked-ocilrefs.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xsltproc --stringparam product fuse6 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked-ocilrefs.xml /home/chase/_work/complianceascode-content/complianceascode-content/shared/transforms/xccdf-ocilcheck2ref.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked-resolved.xml

fuse6/bash-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "[fuse6-content] generating bash-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type bash --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/bash-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/fixes/bash

fuse6/ansible-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "[fuse6-content] generating ansible-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ansible --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ansible-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/fixes/ansible

fuse6/puppet-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "[fuse6-content] generating puppet-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type puppet --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/puppet-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/fixes/puppet

fuse6/anaconda-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "[fuse6-content] generating anaconda-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type anaconda --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/anaconda-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/fixes/anaconda

fuse6/ignition-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "[fuse6-content] generating ignition-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type ignition --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/ignition-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/fixes/ignition

fuse6/kubernetes-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "[fuse6-content] generating kubernetes-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type kubernetes --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/kubernetes-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/fixes/kubernetes

fuse6/blueprint-fixes.xml: ../build-scripts/generate_fixes_xml.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "[fuse6-content] generating blueprint-fixes.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && env PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content /usr/bin/python3 /home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/generate_fixes_xml.py --remediation_type blueprint --build_dir /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/blueprint-fixes.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/fixes/blueprint

fuse6/xccdf-unlinked-resolved.xml: fuse6/shorthand.xml
fuse6/xccdf-unlinked-resolved.xml: ../products/fuse6/transforms/shorthand2xccdf.xslt
fuse6/xccdf-unlinked-resolved.xml: ../products/fuse6/transforms/constants.xslt
fuse6/xccdf-unlinked-resolved.xml: ../shared/transforms/shared_constants.xslt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "[fuse6-content] generating xccdf-unlinked-resolved.xml"
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/xsltproc --stringparam ssg_version 0.1.58 --output /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/products/fuse6/transforms/shorthand2xccdf.xslt /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/shorthand.xml
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && /usr/bin/oscap xccdf resolve -o /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked-resolved.xml /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/xccdf-unlinked-resolved.xml

generate-ssg-fuse6-guide-index.html: fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html
generate-ssg-fuse6-guide-index.html: guides/ssg-fuse6-guide-index.html
generate-ssg-fuse6-guide-index.html: ssg-fuse6-ds.xml
generate-ssg-fuse6-guide-index.html: fuse6/ssg-fuse6-ds-base.xml
generate-ssg-fuse6-guide-index.html: ssg-fuse6-xccdf-1.2.xml
generate-ssg-fuse6-guide-index.html: ssg-fuse6-oval.xml
generate-ssg-fuse6-guide-index.html: ssg-fuse6-ocil.xml
generate-ssg-fuse6-guide-index.html: ssg-fuse6-cpe-dictionary.xml
generate-ssg-fuse6-guide-index.html: ssg-fuse6-cpe-oval.xml
generate-ssg-fuse6-guide-index.html: ssg-fuse6-xccdf.xml
generate-ssg-fuse6-guide-index.html: fuse6/xccdf-linked.xml
generate-ssg-fuse6-guide-index.html: fuse6/oval-linked.xml
generate-ssg-fuse6-guide-index.html: fuse6/ocil-linked.xml
generate-ssg-fuse6-guide-index.html: fuse6/oval-unlinked.xml
generate-ssg-fuse6-guide-index.html: fuse6/shorthand.xml
generate-ssg-fuse6-guide-index.html: fuse6/xccdf-unlinked.xml
generate-ssg-fuse6-guide-index.html: fuse6/ocil-unlinked.xml
generate-ssg-fuse6-guide-index.html: fuse6/profiles
generate-ssg-fuse6-guide-index.html: fuse6/checks/sce/metadata.json
generate-ssg-fuse6-guide-index.html: fuse6/xccdf-unlinked-ocilrefs.xml
generate-ssg-fuse6-guide-index.html: fuse6/bash-fixes.xml
generate-ssg-fuse6-guide-index.html: fuse6/ansible-fixes.xml
generate-ssg-fuse6-guide-index.html: fuse6/puppet-fixes.xml
generate-ssg-fuse6-guide-index.html: fuse6/anaconda-fixes.xml
generate-ssg-fuse6-guide-index.html: fuse6/ignition-fixes.xml
generate-ssg-fuse6-guide-index.html: fuse6/kubernetes-fixes.xml
generate-ssg-fuse6-guide-index.html: fuse6/blueprint-fixes.xml
generate-ssg-fuse6-guide-index.html: fuse6/xccdf-unlinked-resolved.xml
generate-ssg-fuse6-guide-index.html: fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/build.make

.PHONY : generate-ssg-fuse6-guide-index.html

# Rule to build all files generated by this target.
fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/build: generate-ssg-fuse6-guide-index.html

.PHONY : fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/build

fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/clean:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 && $(CMAKE_COMMAND) -P CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/cmake_clean.cmake
.PHONY : fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/clean

fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/depend:
	cd /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chase/_work/complianceascode-content/complianceascode-content /home/chase/_work/complianceascode-content/complianceascode-content/products/fuse6 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6 /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fuse6/CMakeFiles/generate-ssg-fuse6-guide-index.html.dir/depend

