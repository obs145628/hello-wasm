#!/bin/sh

wasm-pack build --target bundler --out-dir _build_wasm
if [ "$?" -ne "0" ]; then
    echo "Rust compilation Failed !"
    exit 1
fi

cd app
npx webpack
if [ "$?" -ne "0" ]; then
    echo "Webpack build Failed !"
    exit 1
fi

echo "Build Successfull !"
