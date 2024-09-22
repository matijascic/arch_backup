EXE_FILENAME=template


if [[ $1 == "-d" ]]; then
    cd bin/debug && make clean
    cmake ../.. -DCMAKE_BUILD_TYPE=Debug && cmake --build . && make 
    cd ../..
    rm -rf ./compile_commands.json
    ln -s ./bin/debug/compile_commands.json ./
     echo "Running Debug Build..."
    ./bin/debug/${EXE_FILENAME}_d
elif [[ $1 == "-r" ]]; then
    cd bin/release && make clean
    cmake ../.. -DCMAKE_BUILD_TYPE=Release && cmake --build . && make
    cd ../..
    rm -rf ./compile_commands.json
    ln -s ./bin/release/compile_commands.json ./
    echo "Running Release Build..."
    ./bin/release/${EXE_FILENAME}
else
    echo "No Build Configuration specified..."
fi

