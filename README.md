# website-2での環境構築手順
作業ディレクトリを作成
作業ディレクトリに移動
Dockerfile docker-compose.yml entrypoint.sh Gemfile Gemfile.lock　左記ファイルを作成
各ファイルに記述
docker compose up -d
docker compose run api rails new . --force --database=mysql
ここでDockerfileが上書きされるので、
docker compose down
docker compose up -d
でdockers
再起動する

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
