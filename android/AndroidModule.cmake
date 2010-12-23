macro(define_android_manual name lib_srcs includes type)
project(${name})
if(NOT DEFINED cxx_extension)
  set(cxx_extension .cpp)
endif()
configure_file("${ANDROID_CMAKE_DIR}/Android.mk.master.in" "${CMAKE_CURRENT_BINARY_DIR}/Android.mk")
set(android_module_name ${name})
set(android_srcs "")
set(include_dirs "${includes}")

set(module_path ${CMAKE_CURRENT_BINARY_DIR}/${name})
configure_file("${ANDROID_CMAKE_DIR}/what.txt.in" "${module_path}/Android.mk")

foreach(f ${lib_srcs})
    set(n_f ${f})
    #file(RELATIVE_PATH n_f ${module_path} ${module_root_path}/${f})
		set(android_srcs "${android_srcs} ${n_f}")
endforeach()
configure_file("${ANDROID_CMAKE_DIR}/Android.mk.${type}.in" "${module_path}/Android.mk")
endmacro()


macro(swig_wrapper_gen name)

    file(GLOB swig_srcs ${CMAKE_CURRENT_SOURCE_DIR}/src/*.i)

    file(GLOB SWIG_MAIN ${CMAKE_CURRENT_SOURCE_DIR}/src/${name}.i)
    
	ADD_CUSTOM_COMMAND(
	OUTPUT ${SWIG_C_DIR}
	DEPENDS   ${swig_srcs}
	COMMAND   mkdir
	ARGS  -p ${SWIG_C_DIR}
	)
	
	ADD_CUSTOM_COMMAND(
	OUTPUT ${SWIG_JAVA_DIR}
	DEPENDS   ${swig_srcs}
	COMMAND   mkdir
	ARGS  -p ${SWIG_JAVA_DIR}
	)
	
    ADD_CUSTOM_COMMAND(
        OUTPUT    ${name}_swig
        DEPENDS   ${swig_srcs} ${SWIG_JAVA_DIR} ${SWIG_C_DIR}
        COMMAND   swig
        ARGS -java -c++ -I${android_opencv_jni_root}/jni -package "${JAVA_ROOT_PACKAGE}.jni" -outdir ${SWIG_JAVA_DIR} -o ${SWIG_C_OUT} ${SWIG_MAIN}
    )

    ADD_CUSTOM_TARGET(${name}_swig_gen echo
      DEPENDS ${name}_swig
    )
    
    set(SWIG_OUT_FILES ${SWIG_OUT_FILES} ${SWIG_C_OUT})
endmacro()

macro(define_jni_module name)
    set(SWIG_JAVA_DIR ${JAVA_ROOT_DIR}/jni)
    set(SWIG_C_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/gen)
    set(SWIG_C_OUT ${SWIG_C_DIR}/${name}_swig.cpp)    
    swig_wrapper_gen(${name})
    file(GLOB lib_srcs "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c*")
    set(lib_srcs "${lib_srcs} ${SWIG_C_OUT}")
	file(GLOB lib_int_hdrs "src/*.h*")
	define_android_manual(${name} "${lib_srcs}" "$(LOCAL_PATH)/include $(LOCAL_PATH)/src ${android_module_include_dirs} $(OPENCV_INCLUDES) $(ANDROID_OPENCV_INCLUDES)" jni)
endmacro()

macro(define_module name)
	file(GLOB lib_srcs "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c*")
	file(GLOB lib_int_hdrs "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h*")
	define_android_manual(${name} "${lib_srcs}" "$(LOCAL_PATH)/include $(LOCAL_PATH)/src ${android_module_include_dirs} $(OPENCV_INCLUDES)" static)
endmacro()


