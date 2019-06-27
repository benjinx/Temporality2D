if("0.9.9.3" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

set(run 0)

if("/home/benji/Documents/Temporality2D/build/depend-glm-prefix/src/depend-glm-stamp/depend-glm-gitinfo.txt" IS_NEWER_THAN "/home/benji/Documents/Temporality2D/build/depend-glm-prefix/src/depend-glm-stamp/depend-glm-gitclone-lastrun.txt")
  set(run 1)
endif()

if(NOT run)
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/benji/Documents/Temporality2D/build/depend-glm-prefix/src/depend-glm-stamp/depend-glm-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/benji/Documents/Temporality2D/build/depend/glm"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/benji/Documents/Temporality2D/build/depend/glm'")
endif()

set(git_options)

# disable cert checking if explicitly told not to do it
set(tls_verify "")
if(NOT "x" STREQUAL "x" AND NOT tls_verify)
  list(APPEND git_options
    -c http.sslVerify=false)
endif()

set(git_clone_options)

set(git_shallow "TRUE")
if(git_shallow)
  list(APPEND git_clone_options --depth 1 --no-single-branch)
endif()

set(git_progress "")
if(git_progress)
  list(APPEND git_clone_options --progress)
endif()

set(git_config "")
foreach(config IN LISTS git_config)
  list(APPEND git_clone_options --config ${config})
endforeach()

# try the clone 3 times incase there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" ${git_options} clone ${git_clone_options} --origin "origin" "https://github.com/g-truc/glm.git" "glm"
    WORKING_DIRECTORY "/home/benji/Documents/Temporality2D/build/depend"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/g-truc/glm.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git" ${git_options} checkout 0.9.9.3 --
  WORKING_DIRECTORY "/home/benji/Documents/Temporality2D/build/depend/glm"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '0.9.9.3'")
endif()

execute_process(
  COMMAND "/usr/bin/git" ${git_options} submodule init 
  WORKING_DIRECTORY "/home/benji/Documents/Temporality2D/build/depend/glm"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/home/benji/Documents/Temporality2D/build/depend/glm'")
endif()

execute_process(
  COMMAND "/usr/bin/git" ${git_options} submodule update --recursive --init 
  WORKING_DIRECTORY "/home/benji/Documents/Temporality2D/build/depend/glm"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/benji/Documents/Temporality2D/build/depend/glm'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/benji/Documents/Temporality2D/build/depend-glm-prefix/src/depend-glm-stamp/depend-glm-gitinfo.txt"
    "/home/benji/Documents/Temporality2D/build/depend-glm-prefix/src/depend-glm-stamp/depend-glm-gitclone-lastrun.txt"
  WORKING_DIRECTORY "/home/benji/Documents/Temporality2D/build/depend/glm"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/benji/Documents/Temporality2D/build/depend-glm-prefix/src/depend-glm-stamp/depend-glm-gitclone-lastrun.txt'")
endif()
