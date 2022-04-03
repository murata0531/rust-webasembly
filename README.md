# webasembly-rust

Rust + WebAssembly

## WebAssemblyとは
https://hackmd.io/YcGZAX41TN-z-OfNLSUPtA

環境

Diesel

MySQL

WebAsembly

コンテナ作成

```
$ docker-compose up -d --build
```

コンテナとイメージ破棄

```
$ docker-compose down --rmi all --volumes --remove-orphans
```

各種コンテナに入る

```
rustコンテナ：ここでRustを動かしている
$ docker-compose exec rust bash
```

```
nodeコンテナ：ここでNodeを動かしている
$ docker-compose exec node bash
```

```
dbコンテナ：ここでmysqlを動かしている
$ docker-compose exec db bash
```

Rustアプリケーション構築

envファイル作成
```
$ echo DATABASE_URL=mysql://root:password@db/test > .env
```

```
$ docker-compose build

$ docker-compose run --rm rust bash 

bash# cd rustwasm

bash# cargo build --target=wasm32-unknown-unknown --release

```

WebAssemblyアプリケーション構築

```
$ docker-compose build

$ docker-compose run --rm node bash 

bash# cd html

bash# npm install

bash# npm run asbuild

```

## WebAssembly Studio

web上でwebassemblyの構築ができるサイト↓

https://webassembly.studio/
