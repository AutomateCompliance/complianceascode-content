file(REMOVE_RECURSE
  "../ssg-fedora-cpe-dictionary.xml"
  "../ssg-fedora-cpe-oval.xml"
  "../ssg-fedora-ds-1.2.xml"
  "../ssg-fedora-ds.xml"
  "../ssg-fedora-ocil.xml"
  "../ssg-fedora-oval.xml"
  "../ssg-fedora-xccdf-1.2.xml"
  "../ssg-fedora-xccdf.xml"
  "CMakeFiles/generate-ssg-fedora-ds.xml"
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
  "ssg-fedora-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-fedora-ds.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
