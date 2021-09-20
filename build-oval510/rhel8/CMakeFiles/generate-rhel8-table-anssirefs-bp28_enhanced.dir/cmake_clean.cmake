file(REMOVE_RECURSE
  "../ssg-rhel8-xccdf.xml"
  "../tables/table-rhel8-anssirefs-bp28_enhanced.html"
  "CMakeFiles/generate-rhel8-table-anssirefs-bp28_enhanced"
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
  include(CMakeFiles/generate-rhel8-table-anssirefs-bp28_enhanced.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
