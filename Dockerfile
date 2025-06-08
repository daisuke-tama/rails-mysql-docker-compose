FROM ruby:3.2.0

# 必要なパッケージのインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs default-mysql-client

# アプリケーションディレクトリの作成
WORKDIR /app

# Gemfileのコピーとインストール
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# アプリケーションのコピー
COPY . /app

# エントリーポイントの設定
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# サーバーの起動
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
