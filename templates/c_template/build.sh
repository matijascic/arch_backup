EXE_FILENAME=template

cd bin/debug && make clean
cmake ../.. -DCMAKE_BUILD_TYPE=Debug && cmake --build . && make 
cd .. 

cd release && make clean
cmake ../.. -DCMAKE_BUILD_TYPE=Release && cmake --build . && make
cd ../.. 

rm -rf ./compile_commands.json
ln -s ./bin/release/compile_commands.json ./

if [[ $1 == "-d" ]]; then
    echo "Running Debug Build..."
    ./bin/debug/${EXE_FILENAME}_d
elif [[ $1 == "-r" ]]; then
    echo "Running Release Build..."
    ./bin/release/${EXE_FILENAME}
fi
