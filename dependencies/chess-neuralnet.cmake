include(ExternalProject)
ExternalProject_Add(
        chess-neuralnet-external
        URL https://github.com/leonkacowicz/chess-neuralnet/archive/refs/heads/main.zip
        PREFIX ${CMAKE_BINARY_DIR}/chess-neuralnet-external
        INSTALL_COMMAND ""
        LOG_DOWNLOAD ON
        LOG_CONFIGURE ON)

add_library(libchess-neuralnet IMPORTED STATIC GLOBAL)
add_dependencies(libchess-neuralnet chess-neuralnet-external)
include_directories("${CMAKE_BINARY_DIR}/chess-neuralnet-external/src/chess-neuralnet-external/src/neuralnet/include")
set_target_properties(libchess-neuralnet PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${CMAKE_BINARY_DIR}/chess-neuralnet-external/src/chess-neuralnet-external/"
        IMPORTED_LOCATION "${CMAKE_BINARY_DIR}/chess-neuralnet-external/src/chess-neuralnet-external-build/src/neuralnet/libchess_neuralnet.a"
        )
