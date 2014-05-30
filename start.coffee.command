#!/bin/sh

# 実行先のディレクトリへ移動
cd `dirname $0`

coffee --bare --watch --compile --output js coffee