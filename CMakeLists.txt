CMAKE_MINIMUM_REQUIRED(VERSION 3.2 FATAL_ERROR)

# Initialize Projects
PROJECT(Temporality2D VERSION 0.1)

# Configuration
FILE(RELATIVE_PATH RESOURCE_PATH "${CMAKE_BINARY_DIR}" "${CMAKE_SOURCE_DIR}/resources")

SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# Glob
FILE(GLOB_RECURSE 
    _ENGINE_INCLUDES
    "${CMAKE_SOURCE_DIR}/include/*.hpp"
    "${CMAKE_SOURCE_DIR}/include/*.h"
)

FILE(GLOB_RECURSE 
    _ENGINE_SOURCES  
    "${CMAKE_SOURCE_DIR}/src/*.cpp"
    "${CMAKE_SOURCE_DIR}/src/*.c"
    "${CMAKE_SOURCE_DIR}/src/*.hpp"
    "${CMAKE_SOURCE_DIR}/src/*.h"
)

# Add source to executables
ADD_EXECUTABLE(
    ${PROJECT_NAME}
    ${_ENGINE_INCLUDES}
    ${_ENGINE_SOURCES}
)

# Include Dirs
TARGET_INCLUDE_DIRECTORIES(
    ${PROJECT_NAME}
    PUBLIC
        $<INSTALL_INTERFACE:include>
        $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
        $<BUILD_INTERFACE:${CMAKE_BINARY_DIR}/>
    PRIVATE
        "${CMAKE_SOURCE_DIR}/include"
        "${CMAKE_SOURCE_DIR}/include/imgui"
        "${CMAKE_SOURCE_DIR}/src"
        "${CMAKE_BINARY_DIR}/depend"
        "${CMAKE_BINARY_DIR}"
)

# Folders to filters
FOREACH(file IN ITEMS ${_ENGINE_INCLUDES} ${_ENGINE_SOURCES})
    FILE(RELATIVE_PATH file_path ${CMAKE_SOURCE_DIR} ${file})
    GET_FILENAME_COMPONENT(file_path ${file_path} DIRECTORY)
    FILE(TO_NATIVE_PATH ${file_path} file_path)
    SOURCE_GROUP(${file_path} FILES ${file})
ENDFOREACH()

# Load Dependencies
INCLUDE(ExternalProject)

SET(_DEPEND_LIBRARIES)
SET(_DEPEND_LIBRARIES_DEBUG)
SET(_DEPEND_LIBRARIES_RELEASE)

IF(WIN32)
    SET(TRUE_WHEN_WIN32 "ON")
    SET(FALSE_WHEN_WIN32 "OFF")
ELSE()
    SET(TRUE_WHEN_WIN32 "OFF")
    SET(FALSE_WHEN_WIN32 "ON")
ENDIF()

# opengl
FIND_PACKAGE(OpenGL REQUIRED)

INCLUDE_DIRECTORIES(${OPENGL_INCLUDE_DIRS})

TARGET_LINK_LIBRARIES(${PROJECT_NAME} ${OPENGL_LIBRARIES})

# glm
ExternalProject_Add(depend-glm
    GIT_REPOSITORY        "https://github.com/g-truc/glm.git"
    GIT_TAG                "0.9.9.3"
    GIT_SHALLOW            TRUE
    SOURCE_DIR            "${CMAKE_BINARY_DIR}/depend/glm"
    CONFIGURE_COMMAND    ""
    BUILD_COMMAND        ""
    UPDATE_COMMAND        ""
    INSTALL_COMMAND        ""
    TEST_COMMAND        ""
)

INCLUDE_DIRECTORIES(
    "${CMAKE_BINARY_DIR}/depend/glm"
)

ADD_DEPENDENCIES(${PROJECT_NAME} depend-glm)

# sfml
ExternalProject_Add(depend-sfml
    GIT_REPOSITORY        "https://github.com/SFML/SFML"
    GIT_TAG                "2.5.1"
    GIT_SHALLOW            TRUE
    SOURCE_DIR            "${CMAKE_BINARY_DIR}/depend/sfml"
    BINARY_DIR          "${CMAKE_BINARY_DIR}/depend/build/sfml"
    CMAKE_ARGS            ""
    UPDATE_COMMAND        ""
    INSTALL_COMMAND        ""
    TEST_COMMAND        ""
)

INCLUDE_DIRECTORIES(
    "${CMAKE_BINARY_DIR}/depend/sfml/include"
    "${CMAKE_BINARY_DIR}/depend/build/sfml/include"
)

IF(WIN32)
    LIST(APPEND _DEPEND_LIBRARIES_DEBUG "sfml-window.lib;sfml-graphics.lib;sfml-system.lib")
    LIST(APPEND _DEPEND_LIBRARIES_RELEASE "sfml-window.lib;sfml-graphics.lib;sfml-system.lib")
ELSE()
    LIST(APPEND _DEPEND_LIBRARIES "libsfml-window.so;libsfml-graphics.so;libsfml-system.so")
ENDIF()

ADD_DEPENDENCIES(${PROJECT_NAME} depend-sfml)

# Link all libraries
FOREACH(lib IN ITEMS ${_DEPEND_LIBRARIES})
    TARGET_LINK_LIBRARIES(${PROJECT_NAME} "${CMAKE_BINARY_DIR}/${lib}")
ENDFOREACH()

FOREACH(debug_lib IN ITEMS ${_DEPEND_LIBRARIES_DEBUG})
    TARGET_LINK_LIBRARIES(${PROJECT_NAME} debug "${CMAKE_BINARY_DIR}/Debug/${debug_lib}")
ENDFOREACH()

FOREACH(release_lib IN ITEMS ${_DEPEND_LIBRARIES_RELEASE})
    TARGET_LINK_LIBRARIES(${PROJECT_NAME} optimized "${CMAKE_BINARY_DIR}/Release/${release_lib}")
ENDFOREACH()

ADD_CUSTOM_TARGET(
    run
    COMMAND $<TARGET_FILE:${PROJECT_NAME}>
    DEPENDS ${PROJECT_NAME}
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)
SET_TARGET_PROPERTIES(
    run
    PROPERTIES FOLDER "Automation"
)

SET_PROPERTY(DIRECTORY ${CMAKE_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT "HelloWorld")
SET_TARGET_PROPERTIES(${PROJECT_NAME} PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_BINARY_DIR}")