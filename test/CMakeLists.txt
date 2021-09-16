set(TEST BitmapTest.cc)
add_executable(utest ${TEST})
add_dependencies(utest bloom)
target_link_libraries(utest bloom)