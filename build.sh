cmake -G "Unix Makefiles" \
        -DCMAKE_BUILD_TYPE=Debug \
        -DPISTACHE_BUILD_EXAMPLES=true \
        -DPISTACHE_BUILD_TESTS=false \
        -DPISTACHE_BUILD_DOCS=false \
        -DPISTACHE_USE_SSL=true \
        -DCMAKE_INSTALL_PREFIX=$PWD/../prefix \
        ../

make -j && make install

gdbserver :8888 ./examples/run_http_server
