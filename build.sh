#!/bin/bash

cd src
GOARCH=wasm GOOS=js go build -o lib.wasm main.go



mv lib.wasm ../web/static

cd -

./simpleHttpserver/fs -p 8084 -d ./web