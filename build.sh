cmake -S . -B cmark/build -DCMAKE_BUILD_TYPE=Debug
cmake --build cmark/build --config Debug

cmake -S . -B cmark/build -DCMAKE_BUILD_TYPE=Release
cmake --build cmark/build --config Release