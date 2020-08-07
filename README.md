
Sample project using Rust, WASM and webpack to generate files that can be served by any web server

# Build Rust Code

```shell
wasm-pack build --target bundler --out-dir _build_wasm
```

# Bundle javascript code

```shell
cd app
npm install
npx webpack
```

# Build all at once

(Rust + Webpack)

```shell
./build.sh
```

# Serve static files


```shell
cargo install https
cd www
http -p 8080
```

