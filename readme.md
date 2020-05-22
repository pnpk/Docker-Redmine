# これは何か？

RedmineをDocker上で動作させるためのdocker-composeファイルです。
Redmineをお手軽に試してみたい場合に利用してみてください。

`docker-compose up -d`で起動した後、WEBブラウザで`http://localhost:3000/`にアクセスしてください。
ID/パスワードは`admin/admin`です。

Dockerコンテナ起動後、外観を変更する場合はdataフォルダ配下に作成されるthemesにテーマフォルダを配置、プラグインをインストールする場合には同様にpluginsフォルダにプラグインを配置します。
プラグインの読み込みを行う際はdockerコンテナのプラグインディレクトリ上で`bundle exec rake redmine:plugins:migrate RAILS_ENV=production`コマンドの実行が必要です。

構築環境を全て消去する場合には`docker-compose down --rmi all --volumes`を実行すると作成環境が削除できます。
