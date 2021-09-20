# Install script for directory: /home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel7-xccdf.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel7-oval.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel7-ocil.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel7-cpe-dictionary.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel7-cpe-oval.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel7-ds.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-rhel7-ds-1.2.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        file(GLOB GUIDE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/guides/ssg-rhel7-*.html") 

        if(NOT IS_ABSOLUTE share/doc/scap-security-guide/guides)
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/guides"
                TYPE FILE FILES ${GUIDE_FILES})
        else()
            file(INSTALL DESTINATION "share/doc/scap-security-guide/guides"
                TYPE FILE FILES ${GUIDE_FILES})
        endif()
        
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            file(GLOB ROLE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ansible/rhel7-playbook-*.yml") 

            if(NOT IS_ABSOLUTE share/scap-security-guide/ansible)
                file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/ansible"
                    TYPE FILE FILES ${ROLE_FILES})
            else()
                file(INSTALL DESTINATION "share/scap-security-guide/ansible"
                    TYPE FILE FILES ${ROLE_FILES})
            endif()
            
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            file(GLOB ROLE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/bash/rhel7-script-*.sh") 

            if(NOT IS_ABSOLUTE share/scap-security-guide/bash)
                file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/bash"
                    TYPE FILE FILES ${ROLE_FILES})
            else()
                file(INSTALL DESTINATION "share/scap-security-guide/bash"
                    TYPE FILE FILES ${ROLE_FILES})
            endif()
            
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/kickstart" TYPE FILE FILES
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-anssi_nt28_enhanced-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-anssi_nt28_high-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-anssi_nt28_intermediary-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-anssi_nt28_minimal-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-cis-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-cis_server_l1-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-cis_workstation_l1-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-cis_workstation_l2-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-e8-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-hipaa-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-ospp-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-pci-dss-server-with-gui-oaa-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-stig-ks.cfg"
    "/home/chase/_work/complianceascode-content/complianceascode-content/products/rhel7/kickstart/ssg-rhel7-stig_gui-ks.cfg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-nistrefs.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-cisrefs.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-cuirefs.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-pcidssrefs.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-anssirefs.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-ospprefs.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-nistrefs-standard.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-nistrefs-ospp.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-nistrefs-C2S.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-nistrefs-stig.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-anssirefs-nt28_minimal.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-anssirefs-nt28_intermediary.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-anssirefs-nt28_enhanced.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-anssirefs-nt28_high.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-cces.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-srgmap.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-srgmap-flat.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-stig.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-stig-testinfo.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/tables" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/tables/table-rhel7-stig_gui-testinfo.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-centos7-xccdf.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-centos7-ds.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-centos7-ds-1.2.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        file(GLOB GUIDE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/guides/ssg-centos7-guide-*.html") 

        if(NOT IS_ABSOLUTE share/doc/scap-security-guide/guides)
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/guides"
                TYPE FILE FILES ${GUIDE_FILES})
        else()
            file(INSTALL DESTINATION "share/doc/scap-security-guide/guides"
                TYPE FILE FILES ${GUIDE_FILES})
        endif()
        
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        file(GLOB ROLE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ansible/centos7-playbook-*.yml") 

        if(NOT IS_ABSOLUTE share/scap-security-guide/ansible)
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/ansible"
                TYPE FILE FILES ${ROLE_FILES})
        else()
            file(INSTALL DESTINATION "share/scap-security-guide/ansible"
                TYPE FILE FILES ${ROLE_FILES})
        endif()
        
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        file(GLOB ROLE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/bash/centos7-script-*.sh") 

        if(NOT IS_ABSOLUTE share/scap-security-guide/bash)
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/bash"
                TYPE FILE FILES ${ROLE_FILES})
        else()
            file(INSTALL DESTINATION "share/scap-security-guide/bash"
                TYPE FILE FILES ${ROLE_FILES})
        endif()
        
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-sl7-xccdf.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-sl7-ds.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xml/scap/ssg/content" TYPE FILE FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ssg-sl7-ds-1.2.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        file(GLOB GUIDE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/guides/ssg-sl7-guide-*.html") 

        if(NOT IS_ABSOLUTE share/doc/scap-security-guide/guides)
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/scap-security-guide/guides"
                TYPE FILE FILES ${GUIDE_FILES})
        else()
            file(INSTALL DESTINATION "share/doc/scap-security-guide/guides"
                TYPE FILE FILES ${GUIDE_FILES})
        endif()
        
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        file(GLOB ROLE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/ansible/sl7-playbook-*.yml") 

        if(NOT IS_ABSOLUTE share/scap-security-guide/ansible)
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/ansible"
                TYPE FILE FILES ${ROLE_FILES})
        else()
            file(INSTALL DESTINATION "share/scap-security-guide/ansible"
                TYPE FILE FILES ${ROLE_FILES})
        endif()
        
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
        file(GLOB ROLE_FILES "/home/chase/_work/complianceascode-content/complianceascode-content/build/bash/sl7-script-*.sh") 

        if(NOT IS_ABSOLUTE share/scap-security-guide/bash)
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/scap-security-guide/bash"
                TYPE FILE FILES ${ROLE_FILES})
        else()
            file(INSTALL DESTINATION "share/scap-security-guide/bash"
                TYPE FILE FILES ${ROLE_FILES})
        endif()
        
endif()

