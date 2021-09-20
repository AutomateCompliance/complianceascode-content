# Install script for directory: /home/chase/_work/complianceascode-content/complianceascode-content/products/opensuse

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-xccdf.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-oval.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-ocil.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-cpe-dictionary.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-cpe-oval.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-ds.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ssg-opensuse-ds-1.2.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        file(GLOB GUIDE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/guides/ssg-opensuse-*.html") 

        if(NOT IS_ABSOLUTE share/doc/scap-security-guide/guides)
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/guides"
                TYPE FILE FILES ${GUIDE_FILES})
        else()
            file(INSTALL DESTINATION "share/doc/scap-security-guide/guides"
                TYPE FILE FILES ${GUIDE_FILES})
        endif()
        
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            file(GLOB ROLE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/ansible/opensuse-playbook-*.yml") 

            if(NOT IS_ABSOLUTE share/scap-security-guide/ansible)
                file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/ansible"
                    TYPE FILE FILES ${ROLE_FILES})
            else()
                file(INSTALL DESTINATION "share/scap-security-guide/ansible"
                    TYPE FILE FILES ${ROLE_FILES})
            endif()
            
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            file(GLOB ROLE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build-oval510/bash/opensuse-script-*.sh") 

            if(NOT IS_ABSOLUTE share/scap-security-guide/bash)
                file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/bash"
                    TYPE FILE FILES ${ROLE_FILES})
            else()
                file(INSTALL DESTINATION "share/scap-security-guide/bash"
                    TYPE FILE FILES ${ROLE_FILES})
            endif()
            
endif()

