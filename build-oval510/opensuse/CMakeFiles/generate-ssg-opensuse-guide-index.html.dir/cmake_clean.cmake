file(REMOVE_RECURSE
  "../guides/ssg-opensuse-guide-index.html"
  "../ssg-opensuse-cpe-dictionary.xml"
  "../ssg-opensuse-cpe-oval.xml"
  "../ssg-opensuse-ds.xml"
  "../ssg-opensuse-ocil.xml"
  "../ssg-opensuse-oval.xml"
  "../ssg-opensuse-xccdf-1.2.xml"
  "../ssg-opensuse-xccdf.xml"
  "CMakeFiles/generate-ssg-opensuse-guide-index.html"
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
  "ssg-opensuse-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-opensuse-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
