file(REMOVE_RECURSE
  "../ssg-ol7-xccdf.xml"
  "../tables/table-ol7-nistrefs-stig.html"
  "CMakeFiles/generate-ol7-table-nistrefs-stig"
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
  include(CMakeFiles/generate-ol7-table-nistrefs-stig.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
