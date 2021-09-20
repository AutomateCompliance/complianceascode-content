file(REMOVE_RECURSE
  "../guides/ssg-vsel-guide-index.html"
  "../ssg-vsel-cpe-dictionary.xml"
  "../ssg-vsel-cpe-oval.xml"
  "../ssg-vsel-ds.xml"
  "../ssg-vsel-ocil.xml"
  "../ssg-vsel-oval.xml"
  "../ssg-vsel-xccdf-1.2.xml"
  "../ssg-vsel-xccdf.xml"
  "CMakeFiles/generate-ssg-vsel-guide-index.html"
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
  "ssg-vsel-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-vsel-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
