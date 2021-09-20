file(REMOVE_RECURSE
  "../guides/ssg-chromium-guide-index.html"
  "../ssg-chromium-cpe-dictionary.xml"
  "../ssg-chromium-cpe-oval.xml"
  "../ssg-chromium-ds.xml"
  "../ssg-chromium-ocil.xml"
  "../ssg-chromium-oval.xml"
  "../ssg-chromium-xccdf-1.2.xml"
  "../ssg-chromium-xccdf.xml"
  "CMakeFiles/generate-ssg-chromium-guide-index.html"
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
  "ssg-chromium-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-chromium-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
