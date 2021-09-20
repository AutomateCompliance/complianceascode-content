file(REMOVE_RECURSE
  "../ssg-rhcos4-xccdf.xml"
  "../tables/table-rhcos4-cces.html"
  "CMakeFiles/generate-rhcos4-table-cces"
  "checks/sce/metadata.json"
  "ignition-fixes.xml"
  "kubernetes-fixes.xml"
  "ocil-linked.xml"
  "ocil-unlinked.xml"
  "oval-linked.xml"
  "oval-unlinked.xml"
  "profiles"
  "shorthand.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-rhcos4-table-cces.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
