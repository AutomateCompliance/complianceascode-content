file(REMOVE_RECURSE
  "../ssg-sle12-xccdf.xml"
  "../tables/table-sle12-stig-testinfo.html"
  "CMakeFiles/generate-sle12-table-stig_per_profile_stig"
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
  "xccdf-linked.xml"
  "xccdf-unlinked-ocilrefs.xml"
  "xccdf-unlinked-resolved.xml"
  "xccdf-unlinked.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-sle12-table-stig_per_profile_stig.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
