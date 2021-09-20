file(REMOVE_RECURSE
  "../ssg-rhel7-xccdf.xml"
  "../tables/table-rhel7-anssirefs-nt28_high.html"
  "CMakeFiles/generate-rhel7-table-anssirefs-nt28_high"
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
  include(CMakeFiles/generate-rhel7-table-anssirefs-nt28_high.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
