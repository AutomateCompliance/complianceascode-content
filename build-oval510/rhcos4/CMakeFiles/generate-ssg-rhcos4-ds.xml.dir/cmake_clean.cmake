file(REMOVE_RECURSE
  "../ssg-rhcos4-cpe-dictionary.xml"
  "../ssg-rhcos4-cpe-oval.xml"
  "../ssg-rhcos4-ds-1.2.xml"
  "../ssg-rhcos4-ds.xml"
  "../ssg-rhcos4-ocil.xml"
  "../ssg-rhcos4-oval.xml"
  "../ssg-rhcos4-xccdf-1.2.xml"
  "../ssg-rhcos4-xccdf.xml"
  "CMakeFiles/generate-ssg-rhcos4-ds.xml"
  "checks/sce/metadata.json"
  "ignition-fixes.xml"
  "kubernetes-fixes.xml"
  "ocil-linked.xml"
  "ocil-unlinked.xml"
  "oval-linked.xml"
  "oval-unlinked.xml"
  "profiles"
  "shorthand.xml"
  "ssg-rhcos4-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-rhcos4-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
