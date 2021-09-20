file(REMOVE_RECURSE
  "../guides/ssg-firefox-guide-index.html"
  "../ssg-firefox-cpe-dictionary.xml"
  "../ssg-firefox-cpe-oval.xml"
  "../ssg-firefox-ds.xml"
  "../ssg-firefox-ocil.xml"
  "../ssg-firefox-oval.xml"
  "../ssg-firefox-xccdf-1.2.xml"
  "../ssg-firefox-xccdf.xml"
  "CMakeFiles/generate-ssg-firefox-guide-index.html"
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
  "ssg-firefox-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-firefox-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
