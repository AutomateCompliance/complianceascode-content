file(REMOVE_RECURSE
  "../ansible/all-profile-playbooks-centos8"
  "../ssg-centos8-xccdf.xml"
  "../ssg-rhel8-xccdf.xml"
  "CMakeFiles/generate-all-profile-playbooks-centos8"
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
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-all-profile-playbooks-centos8.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
