mkdir libs
mkdir libs\debug
mkdir libs\release

mkdir cmark\build
cd cmark\build

cmake ..

cmake --build .
copy src\Debug\cmark.lib ..\..\libs\debug
copy src\Debug\cmark.pdb ..\..\libs\debug

cmake --build . --config Release
copy src\Release\cmark.lib ..\..\libs\release