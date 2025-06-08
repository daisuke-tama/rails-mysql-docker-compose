#!/bin/bash
set -e

# 既存のPIDファイルがあれば削除
rm -f /myapp/tmp/pids/server.pid

# コンテナ起動後にコマンド実行
exec "$@"
