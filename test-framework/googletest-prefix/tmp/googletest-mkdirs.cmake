# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-src"
  "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-build"
  "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-prefix"
  "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-prefix/tmp"
  "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-prefix/src/googletest-stamp"
  "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-prefix/src"
  "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-prefix/src/googletest-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-prefix/src/googletest-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/said/CLionProjects/C++Basics1/test-framework/googletest-prefix/src/googletest-stamp${cfgdir}") # cfgdir has leading slash
endif()
