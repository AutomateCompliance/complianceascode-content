# Install script for directory: /home/chase/_work/complianceascode-content/complianceascode-content

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/LICENSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/README.md")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/Contributors.md")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man8" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/scap-security-guide.8")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/tests/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/chromium/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/debian9/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/debian10/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/fedora/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/firefox/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/fuse6/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/jre/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/macos1015/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/rhcos4/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/ol7/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/ol8/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/opensuse/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/rhel7/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/rhel8/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/rhel9/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/rhosp10/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/rhosp13/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/rhv4/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/sle12/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/sle15/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1604/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu1804/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/ubuntu2004/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/vsel/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux8/cmake_install.cmake")
  include("/home/chase/_work/complianceascode-content/complianceascode-content/build/wrlinux1019/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/chase/_work/complianceascode-content/complianceascode-content/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
