# Dockerイメージのベースを指定
#　この場合、golang:1.9がインストールされる
FROM golang:1.9

# イメージビルド時に、Dockerコンテナ内で実行するコマンド
# mkdirを指定すると、毎回ディレクトリが作られるのでは？
# アプリケーションの更新や配置を行う
RUN mkdir /echo
#　ホストマシン上のファイルやディレクトリをDockerコンテナ内へコピー
COPY main.go /echo

# コンテナ内で起動時に実行されるプロセス
# アプリケーションそのものを動作させる
# go run /docker/main.goと同じ意味を持つ
CMD ["go", "run", "/echo/main.go"]