file(REMOVE_RECURSE
  "../ssg-centos8-ds-1.2.xml"
  "../ssg-centos8-ds.xml"
  "../ssg-rhel8-cpe-dictionary.xml"
  "../ssg-rhel8-cpe-oval.xml"
  "../ssg-rhel8-ds-1.2.xml"
  "../ssg-rhel8-ds.xml"
  "../ssg-rhel8-ocil.xml"
  "../ssg-rhel8-oval.xml"
  "../ssg-rhel8-xccdf-1.2.xml"
  "../ssg-rhel8-xccdf.xml"
  "CMakeFiles/generate-ssg-centos8-ds.xml"
  "anaconda-fixes.xml"
  "ansible-fixes.xml"
  "bash-fixes.xml"
  "blueprint-fixes.xml"
  "checks/sce/metadata.json"
  "ignition-fixes.xml"
  "kubernetes-fixes.xml"
  "ocil-linked.xml"
  "ocil-unlinked.xml"
  "oval-linked.xml"
  "oval-unlinked.xml"
  "profiles"
  "puppet-fixes.xml"
  "shorthand.xml"
  "ssg-rhel8-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-centos8-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
