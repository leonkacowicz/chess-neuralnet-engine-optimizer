include(ExternalProject)
ExternalProject_Add(
        chess-neuralnet-engine-external
        URL https://github.com/leonkacowicz/chess-neuralnet-engine/archive/refs/heads/main.zip
        PREFIX ${CMAKE_BINARY_DIR}/chess-neuralnet-engine-external
        INSTALL_COMMAND ""
        LOG_DOWNLOAD ON
        LOG_CONFIGURE ON)

add_library(libchess-neuralnet-engine IMPORTED STATIC GLOBAL)
add_dependencies(libchess-neuralnet-engine chess-neuralnet-engine-external)
include_directories("${CMAKE_BINARY_DIR}/chess-neuralnet-engine-external/src/chess-neuralnet-engine-external/src/engine/include")
set_target_properties(libchess-neuralnet-engine PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_BINARY_DIR}/chess-neuralnet-engine-external/src/chess-neuralnet-engine-external/"
        IMPORTED_LOCATION "${CMAKE_BINARY_DIR}/chess-neuralnet-engine-external/src/chess-neuralnet-engine-external-build/src/engine/libengine.a"
        )
