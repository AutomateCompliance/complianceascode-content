file(REMOVE_RECURSE
  "../ssg-opensuse-cpe-dictionary.xml"
  "../ssg-opensuse-cpe-oval.xml"
  "CMakeFiles/generate-ssg-opensuse-cpe-dictionary.xml"
  "checks/sce/metadata.json"
  "oval-unlinked.xml"
  "profiles"
  "shorthand.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-opensuse-cpe-dictionary.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
