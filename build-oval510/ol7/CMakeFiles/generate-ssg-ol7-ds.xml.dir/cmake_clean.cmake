file(REMOVE_RECURSE
  "../ssg-ol7-cpe-dictionary.xml"
  "../ssg-ol7-cpe-oval.xml"
  "../ssg-ol7-ds-1.2.xml"
  "../ssg-ol7-ds.xml"
  "../ssg-ol7-ocil.xml"
  "../ssg-ol7-oval.xml"
  "../ssg-ol7-xccdf-1.2.xml"
  "../ssg-ol7-xccdf.xml"
  "CMakeFiles/generate-ssg-ol7-ds.xml"
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
  "ssg-ol7-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-ol7-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
