file(REMOVE_RECURSE
  "../guides/ssg-rhv4-guide-index.html"
  "../ssg-rhv4-cpe-dictionary.xml"
  "../ssg-rhv4-cpe-oval.xml"
  "../ssg-rhv4-ds.xml"
  "../ssg-rhv4-ocil.xml"
  "../ssg-rhv4-oval.xml"
  "../ssg-rhv4-xccdf-1.2.xml"
  "../ssg-rhv4-xccdf.xml"
  "CMakeFiles/generate-ssg-rhv4-guide-index.html"
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
  "ssg-rhv4-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-rhv4-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
