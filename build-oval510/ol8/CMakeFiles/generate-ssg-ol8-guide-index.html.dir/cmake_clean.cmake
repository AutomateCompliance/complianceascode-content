file(REMOVE_RECURSE
  "../guides/ssg-ol8-guide-index.html"
  "../ssg-ol8-cpe-dictionary.xml"
  "../ssg-ol8-cpe-oval.xml"
  "../ssg-ol8-ds.xml"
  "../ssg-ol8-ocil.xml"
  "../ssg-ol8-oval.xml"
  "../ssg-ol8-xccdf-1.2.xml"
  "../ssg-ol8-xccdf.xml"
  "CMakeFiles/generate-ssg-ol8-guide-index.html"
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
  "ssg-ol8-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-ol8-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
