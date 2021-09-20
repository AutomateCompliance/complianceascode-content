file(REMOVE_RECURSE
  "../ssg-debian10-cpe-dictionary.xml"
  "../ssg-debian10-cpe-oval.xml"
  "CMakeFiles/generate-ssg-debian10-cpe-dictionary.xml"
  "checks/sce/metadata.json"
  "oval-unlinked.xml"
  "profiles"
  "shorthand.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-debian10-cpe-dictionary.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
