file(REMOVE_RECURSE
  "../ssg-ubuntu1804-cpe-dictionary.xml"
  "../ssg-ubuntu1804-cpe-oval.xml"
  "../ssg-ubuntu1804-ds-1.2.xml"
  "../ssg-ubuntu1804-ds.xml"
  "../ssg-ubuntu1804-ocil.xml"
  "../ssg-ubuntu1804-oval.xml"
  "../ssg-ubuntu1804-xccdf-1.2.xml"
  "../ssg-ubuntu1804-xccdf.xml"
  "CMakeFiles/generate-ssg-ubuntu1804-ds.xml"
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
  "ssg-ubuntu1804-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-ubuntu1804-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
