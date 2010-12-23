# ----------------------------------------------------------------------------
#  Root CMake file for Android VTK Build
#
#    To build with cmake
#        $ mkdir build
#        $ cd build
#        $ cmake-gui .. 
#               set the path for VTK 5.6.1 release
#        $ make
#    Make sure to set the path in the cache for the crystax ndk available 
#    here:
#          http://www.crystax.net/android/ndk-r4.php
#
#   - initial version August 2010, for OpenCV port, 
#           by Ethan Rublee ethan.ruble@gmail.com
#   - Changed December 2010 for pcl_perception
#   - Changed December 2010 for VTK
#
# ----------------------------------------------------------------------------
project(VTK)

cmake_minimum_required(VERSION 2.8)


set(ANDROID_CMAKE_DIR ${CMAKE_SOURCE_DIR}/android)

include(android/AndroidModule.cmake REQUIRED)

set(arm_targets "armeabi-v7a" CACHE string "arm targets, armeabi-v7a is for floating point hardware support,armeabi is without")

set(ANDROID true)

#specify the modules here - needed for ndk to want to build.
set(APP_MODULES "Common Filtering")
set(APP_ANDROID_LIBS "-lCommon -lFiltering")

configure_file("${ANDROID_CMAKE_DIR}/Android.mk.master.in" "${CMAKE_BINARY_DIR}/Android.mk")
configure_file("${ANDROID_CMAKE_DIR}/Application.mk.in" "${CMAKE_BINARY_DIR}/Application.mk")
configure_file("${ANDROID_CMAKE_DIR}/AndroidManifest.xml.in" "${CMAKE_BINARY_DIR}/AndroidManifest.xml")
configure_file("${ANDROID_CMAKE_DIR}/default.properties.in" "${CMAKE_BINARY_DIR}/default.properties")

set(JNI_DIR ${CMAKE_BINARY_DIR}/jni)

#find VTK
set(VTK_src_root "${CMAKE_SOURCE_DIR}/VTK" CACHE PATH "VTK source root (try the getvtk.sh script)")
if(NOT EXISTS ${VTK_src_root})
message(FATAL_ERROR "Cannot find VTK source root directory!" )
endif()

configure_file("${ANDROID_CMAKE_DIR}/Android.mk.master.in" "${JNI_DIR}/Android.mk")

add_subdirectory(${CMAKE_SOURCE_DIR}/VTK_ndk "${JNI_DIR}/VTK_ndk")

set(NDK_ROOT  "$ENV{HOME}/android-ndk-r4-crystax" CACHE STRING "the crystax ndk directory")
if(NOT EXISTS ${NDK_ROOT})
message(FATAL_ERROR "Cannot find your ndk root directory! please download and 
unzip the android ndk from crystax to the directory specified by NDK_ROOT
You may download the crystax ndk from: 
        http://www.crystax.net/android/ndk-r4.php" )
endif()

set(J  "2" CACHE STRING "how many processes for make -j <J>")

set(NDK_BUILD_ARGS  --directory=${CMAKE_BINARY_DIR} NDK_APPLICATION_MK=Application.mk -j${J} V=1  )


set(NDK_BUILD_CLEAN_ARGS  --directory=${CMAKE_BINARY_DIR} NDK_APPLICATION_MK=Application.mk  V=1 clean )

ADD_CUSTOM_COMMAND(
OUTPUT    VTK
COMMAND   "${NDK_ROOT}/ndk-build" 
ARGS      ${NDK_BUILD_ARGS}
)

ADD_CUSTOM_TARGET(ndk ALL echo
  DEPENDS VTK
)

message(STATUS "Make will use make -j${J} - for speeding up build - you may change this in the cache")
message(STATUS "The NDK directory is ${NDK_ROOT}")
message(STATUS "ndk-build args: ${NDK_BUILD_ARGS}")
message(STATUS "just run make - and grab some coffee or tea ;)")
message(STATUS "The android opencv libs will be located in ${CMAKE_BINARY_DIR}/obj/local/armeabi*/")



  



