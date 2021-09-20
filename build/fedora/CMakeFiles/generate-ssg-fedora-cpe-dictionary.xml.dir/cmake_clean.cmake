file(REMOVE_RECURSE
  "../ssg-fedora-cpe-dictionary.xml"
  "../ssg-fedora-cpe-oval.xml"
  "CMakeFiles/generate-ssg-fedora-cpe-dictionary.xml"
  "checks/sce/metadata.json"
  "oval-unlinked.xml"
  "profiles"
  "shorthand.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-fedora-cpe-dictionary.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
