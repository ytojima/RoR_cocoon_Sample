# Rails(6系)でcocoonを使用して動的にフォームを追加する

[こちらの記事のサンプル](https://toji.tech/rails6%e7%b3%bb%e3%81%a7cocoon%e3%82%92%e4%bd%bf%e7%94%a8%e3%81%97%e3%81%a6%e5%8b%95%e7%9a%84%e3%81%ab%e3%83%95%e3%82%a9%e3%83%bc%e3%83%a0%e3%82%92%e8%bf%bd%e5%8a%a0%e3%81%99%e3%82%8b/) です。

Dockerを使用してサンプルを作成しています。  
Dockerを使用しない場合は、appフォルダ以下で、コマンドを実行してください。

## Dockerでの起動
初回起動時は、`docker-compose up`後にデータベース/テーブル作成を先に実施して`docker-compose`を再起動してください。
```bash
docker-compose up
```

* データベース作成
```bash
docker-compose run --rm app rails db:create
```

* テーブル作成
```bash
docker-compose run --rm app rails db:migrate
```

## Bundle Install
```bash
docker-compose run --rm app bundle install
```

### Gemの確認
ruby gem、gemsとしてVolumeに保持されます。

以下でVolume内のGemを確認可能
```bash
docker-compose run --rm app ls /usr/local/bundle/gems
```

## node_modules
```bash
# package.json install
docker-compose run --rm app yarn install

# Add package
docker-compose run --rm app yarn add package_name

# Remove package
docker-compose run --rm app yarn remove package_name
```
