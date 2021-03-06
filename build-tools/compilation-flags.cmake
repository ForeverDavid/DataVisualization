function(apply_compilation_flags target)
  set_property(TARGET ${target} PROPERTY CXX_STANDARD 17)
  set_property(TARGET ${target} PROPERTY CXX_EXTENSIONS OFF)
  set(COMPILE_FLAGS -Wall -Wextra -Werror)
  if(CMAKE_BUILD_TYPE STREQUAL "RelWithDebInfo")
	#list(APPEND COMPILE_FLAGS  "-pg")
  endif()
  message(STATUS "[apply-compilation-flags] target:${target} compilation flags: ${COMPILE_FLAGS}")
  target_compile_options(${target} PUBLIC ${COMPILE_FLAGS})
endfunction()
