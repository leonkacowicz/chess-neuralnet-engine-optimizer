file(GLOB SRCS ampdist.cpp)
add_executable(ampdist ${SRCS})
target_link_libraries(ampdist libchess-neuralnet)
target_link_libraries(ampdist libchess-neuralnet-engine)
target_link_libraries(ampdist libchess-core)
target_link_libraries(ampdist Eigen3::Eigen)

file(GLOB SRCS parse_log.cpp)
add_executable(parselog ${SRCS})
target_link_libraries(parselog libchess-neuralnet)
target_link_libraries(parselog libchess-neuralnet-engine)
target_link_libraries(parselog libchess-core)
target_link_libraries(parselog libchess-uci)
target_link_libraries(parselog Eigen3::Eigen)

file(GLOB SRCS gen_games.cpp)
add_executable(gengames ${SRCS})
target_link_libraries(gengames libchess-core)
