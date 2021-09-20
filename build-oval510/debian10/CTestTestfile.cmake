# CMake generated Testfile for 
# Source directory: /home/chase/_work/complianceascode-content/complianceascode-content/products/debian10
# Build directory: /home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/debian10
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate-ssg-debian10-cpe-dictionary.xml "/usr/bin/oscap" "cpe" "validate" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-cpe-dictionary.xml")
set_tests_properties(validate-ssg-debian10-cpe-dictionary.xml PROPERTIES  _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;490;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;915;ssg_build_cpe_dictionary;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
add_test(validate-ssg-debian10-cpe-oval.xml "/usr/bin/oscap" "oval" "validate" "--schematron" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-cpe-oval.xml")
set_tests_properties(validate-ssg-debian10-cpe-oval.xml PROPERTIES  _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;494;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;915;ssg_build_cpe_dictionary;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
add_test(validate-ssg-debian10-xccdf.xml "/usr/bin/oscap" "xccdf" "validate" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-xccdf.xml")
set_tests_properties(validate-ssg-debian10-xccdf.xml PROPERTIES  _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;551;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;917;ssg_build_xccdf_final;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
add_test(verify-references-ssg-debian10-xccdf.xml "env" "PYTHONPATH=/home/chase/_work/complianceascode-content/complianceascode-content" "/usr/bin/python3" "/home/chase/_work/complianceascode-content/complianceascode-content/build-scripts/verify_references.py" "--rules-with-invalid-checks" "--base-dir" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510" "--ovaldefs-unused" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-xccdf.xml")
set_tests_properties(verify-references-ssg-debian10-xccdf.xml PROPERTIES  LABELS "quick" _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;556;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;917;ssg_build_xccdf_final;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
add_test(verify-ssg-debian10-xccdf.xml-override-true-all-profile-titles "/usr/bin/xmllint" "--xpath" "//*[local-name()=\"Profile\"]/*[local-name()=\"title\"][not(@override=\"true\")]" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-xccdf.xml")
set_tests_properties(verify-ssg-debian10-xccdf.xml-override-true-all-profile-titles PROPERTIES  LABELS "quick" WILL_FAIL "true" _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;561;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;917;ssg_build_xccdf_final;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
add_test(verify-ssg-debian10-xccdf.xml-override-true-all-profile-descriptions "/usr/bin/xmllint" "--xpath" "//*[local-name()=\"Profile\"]/*[local-name()=\"description\"][not(@override=\"true\")]" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-xccdf.xml")
set_tests_properties(verify-ssg-debian10-xccdf.xml-override-true-all-profile-descriptions PROPERTIES  LABELS "quick" WILL_FAIL "true" _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;566;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;917;ssg_build_xccdf_final;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
add_test(validate-ssg-debian10-oval.xml "/usr/bin/oscap" "oval" "validate" "--schematron" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-oval.xml")
set_tests_properties(validate-ssg-debian10-oval.xml PROPERTIES  _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;622;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;918;ssg_build_oval_final;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
add_test(validate-ssg-debian10-ds.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-ds.xml")
set_tests_properties(validate-ssg-debian10-ds.xml PROPERTIES  _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;753;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;923;ssg_build_sds;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
add_test(validate-ssg-debian10-ds-1.2.xml "/usr/bin/oscap" "ds" "sds-validate" "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-debian10-ds-1.2.xml")
set_tests_properties(validate-ssg-debian10-ds-1.2.xml PROPERTIES  _BACKTRACE_TRIPLES "/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;758;add_test;/home/chase/_work/complianceascode-content/complianceascode-content/cmake/SSGCommon.cmake;923;ssg_build_sds;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;6;ssg_build_product;/home/chase/_work/complianceascode-content/complianceascode-content/products/debian10/CMakeLists.txt;0;")
