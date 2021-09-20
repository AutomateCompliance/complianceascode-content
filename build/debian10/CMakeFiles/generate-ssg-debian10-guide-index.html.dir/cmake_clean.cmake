file(REMOVE_RECURSE
  "../guides/ssg-debian10-guide-index.html"
  "../ssg-debian10-cpe-dictionary.xml"
  "../ssg-debian10-cpe-oval.xml"
  "../ssg-debian10-ds.xml"
  "../ssg-debian10-ocil.xml"
  "../ssg-debian10-oval.xml"
  "../ssg-debian10-xccdf-1.2.xml"
  "../ssg-debian10-xccdf.xml"
  "CMakeFiles/generate-ssg-debian10-guide-index.html"
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
  "ssg-debian10-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-debian10-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
