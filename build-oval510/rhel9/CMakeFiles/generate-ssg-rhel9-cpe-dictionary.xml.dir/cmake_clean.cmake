file(REMOVE_RECURSE
  "../ssg-rhel9-cpe-dictionary.xml"
  "../ssg-rhel9-cpe-oval.xml"
  "CMakeFiles/generate-ssg-rhel9-cpe-dictionary.xml"
  "checks/sce/metadata.json"
  "oval-unlinked.xml"
  "profiles"
  "shorthand.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-rhel9-cpe-dictionary.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
