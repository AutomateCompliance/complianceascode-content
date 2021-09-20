file(REMOVE_RECURSE
  "../ssg-firefox-cpe-dictionary.xml"
  "../ssg-firefox-cpe-oval.xml"
  "CMakeFiles/generate-ssg-firefox-cpe-dictionary.xml"
  "checks/sce/metadata.json"
  "oval-unlinked.xml"
  "profiles"
  "shorthand.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-firefox-cpe-dictionary.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
