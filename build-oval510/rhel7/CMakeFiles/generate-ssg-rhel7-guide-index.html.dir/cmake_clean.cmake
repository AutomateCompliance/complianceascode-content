file(REMOVE_RECURSE
  "../guides/ssg-rhel7-guide-index.html"
  "../ssg-rhel7-cpe-dictionary.xml"
  "../ssg-rhel7-cpe-oval.xml"
  "../ssg-rhel7-ds.xml"
  "../ssg-rhel7-ocil.xml"
  "../ssg-rhel7-oval.xml"
  "../ssg-rhel7-pcidss-xccdf-1.2.xml"
  "../ssg-rhel7-xccdf-1.2.xml"
  "../ssg-rhel7-xccdf.xml"
  "CMakeFiles/generate-ssg-rhel7-guide-index.html"
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
  "ssg-rhel7-ds-base.xml"
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-rhel7-guide-index.html.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()