cmake_minimum_required(VERSION 3.5.1)
project(epoll_try)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_BUILD_TYPE Release)
add_compile_options(-O3)
add_definitions(-DTHREADS_COUNT=2)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

set(SOURCE_FILES main.cpp Buffer.h Routing.h storage.cpp storage.h model/User.h model/Location.h model/Visit.h fileReade.cpp fileReade.h Util.h Const.cpp Const.h handlers/UserGetHandler.h SimpleLog.h handlers/LocationGetHandler.h handlers/VisitGetHandler.h handlers/LocationPostHandler.h handlers/VisitPostHandler.h handlers/UserPostHandler.h)
#SET(CMAKE_EXE_LINKER_FLAGS "-static")

add_executable(epoll_try ${SOURCE_FILES})
target_link_libraries(epoll_try PRIVATE pthread)
