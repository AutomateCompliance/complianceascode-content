file(REMOVE_RECURSE
  "../ssg-debian9-cpe-dictionary.xml"
  "../ssg-debian9-cpe-oval.xml"
  "../ssg-debian9-ds-1.2.xml"
  "../ssg-debian9-ds.xml"
  "../ssg-debian9-ocil.xml"
  "../ssg-debian9-oval.xml"
  "../ssg-debian9-xccdf-1.2.xml"
  "../ssg-debian9-xccdf.xml"
  "CMakeFiles/generate-ssg-debian9-ds.xml"
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
  "ssg-debian9-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-debian9-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
