mkdir lib_a_build
cd lib_a_build
cmake ../lib_a
cmake --build . --config Release
cd ..

mkdir lib_b_build
cd lib_b_build
cmake ../lib_b
cmake --build . --config Release
cd ..

mkdir app_build
libtool -static -o ./app_build/libcomb.a ./lib_a_build/liblib_a.a ./lib_b_build/liblib_b.a 

mkdir app_build
cd app_build
cmake ../app
cmake --build . --config Release
./app