file(REMOVE_RECURSE
  "../ssg-ubuntu2004-cpe-dictionary.xml"
  "../ssg-ubuntu2004-cpe-oval.xml"
  "../ssg-ubuntu2004-ds-1.2.xml"
  "../ssg-ubuntu2004-ds.xml"
  "../ssg-ubuntu2004-ocil.xml"
  "../ssg-ubuntu2004-oval.xml"
  "../ssg-ubuntu2004-xccdf-1.2.xml"
  "../ssg-ubuntu2004-xccdf.xml"
  "CMakeFiles/generate-ssg-ubuntu2004-ds.xml"
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
  "ssg-ubuntu2004-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-ubuntu2004-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
