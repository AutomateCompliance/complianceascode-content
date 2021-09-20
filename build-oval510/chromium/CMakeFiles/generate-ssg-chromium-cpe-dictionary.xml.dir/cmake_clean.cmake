file(REMOVE_RECURSE
  "../ssg-chromium-cpe-dictionary.xml"
  "../ssg-chromium-cpe-oval.xml"
  "CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml"
  "checks/sce/metadata.json"
  "oval-unlinked.xml"
  "profiles"
  "shorthand.xml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/generate-ssg-chromium-cpe-dictionary.xml.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
