file(REMOVE_RECURSE
  "../ssg-sle15-cpe-dictionary.xml"
  "../ssg-sle15-cpe-oval.xml"
  "../ssg-sle15-ds-1.2.xml"
  "../ssg-sle15-ds.xml"
  "../ssg-sle15-ocil.xml"
  "../ssg-sle15-oval.xml"
  "../ssg-sle15-xccdf-1.2.xml"
  "../ssg-sle15-xccdf.xml"
  "CMakeFiles/generate-ssg-sle15-ds.xml"
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
  "ssg-sle15-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-sle15-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
