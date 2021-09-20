file(REMOVE_RECURSE
  "../guides/ssg-jre-guide-index.html"
  "../ssg-jre-cpe-dictionary.xml"
  "../ssg-jre-cpe-oval.xml"
  "../ssg-jre-ds.xml"
  "../ssg-jre-ocil.xml"
  "../ssg-jre-oval.xml"
  "../ssg-jre-xccdf-1.2.xml"
  "../ssg-jre-xccdf.xml"
  "CMakeFiles/generate-ssg-jre-guide-index.html"
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
  "ssg-jre-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-jre-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
