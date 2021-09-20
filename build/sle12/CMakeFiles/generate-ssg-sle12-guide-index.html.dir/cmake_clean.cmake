file(REMOVE_RECURSE
  "../guides/ssg-sle12-guide-index.html"
  "../ssg-sle12-cpe-dictionary.xml"
  "../ssg-sle12-cpe-oval.xml"
  "../ssg-sle12-ds.xml"
  "../ssg-sle12-ocil.xml"
  "../ssg-sle12-oval.xml"
  "../ssg-sle12-xccdf-1.2.xml"
  "../ssg-sle12-xccdf.xml"
  "CMakeFiles/generate-ssg-sle12-guide-index.html"
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
  "ssg-sle12-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-sle12-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
