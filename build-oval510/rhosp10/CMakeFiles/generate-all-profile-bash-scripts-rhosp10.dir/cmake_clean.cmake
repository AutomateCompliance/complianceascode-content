file(REMOVE_RECURSE
  "../bash/all-profile-bash-scripts-rhosp10"
  "../ssg-rhosp10-xccdf.xml"
  "CMakeFiles/generate-all-profile-bash-scripts-rhosp10"
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
  include(CMakeFiles/generate-all-profile-bash-scripts-rhosp10.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
