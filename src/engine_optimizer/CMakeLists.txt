file(GLOB SRCS *.cpp)
file(GLOB TRAINSET generate_supervised_training_set.cpp)

list(REMOVE_ITEM SRCS ${TRAINSET})

add_executable(generate_supervised_training_set ${TRAINSET})
target_link_libraries(generate_supervised_training_set libchess-core)
target_link_libraries(generate_supervised_training_set libchess-uci)
target_link_libraries(generate_supervised_training_set libchess-neuralnet-engine)
target_link_libraries(generate_supervised_training_set libchess-neuralnet)
target_link_libraries(generate_supervised_training_set boost_include)
target_link_libraries(generate_supervised_training_set Eigen3::Eigen)


add_subdirectory(amplification_distillation)