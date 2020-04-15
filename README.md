# FuelPHPStudy
Studying is fun for me. FuelPHP Version: 1.8.2

「はじめてのフレームワークとしてのFuelPHP第2版(3) 実践」をDocker環境で構築してみました。

## 公開側フォーム
https://localhost/form

## 管理側フォーム
https://localhost/admin

ID:admin PW:password

## phpMyAdmin
http://localhost:8080/

## Dockerコンテナ構成
```
HTTPSエンドポイントコンテナ（ローカルホストのみ有効）：steveltn/https-portal:1
Webコンテナ：CentOS 7.7.1908,Apache 2.4.6,PHP 5.4.16 with Xdebug v2.2.7
DBコンテナ：mariadb-5.5.64-trusty
phpMyAdminコンテナ：phpmyadmin/phpmyadmin
```

![Dockerコンテナ構成](https://raw.githubusercontent.com/YusukeOno/img/master/FuelPHPStudy/containers.png)

## 環境構築の手順

```
$ docker-compose up -d --build
```

## HTTPSを有効にする場合 (localhost ONLY.)

```
$ docker-compose up -f docker-compose.yml -f docker-compose.local-https-portal.yml -d --build
```

## `No Composer autoloader found. ***` とブラウザに表示された場合

```
$ docker-compose down
$ docker-compose run --rm web php composer.phar install
```


## ユニットテスト
```
$ docker exec -it web-container /bin/bash
$ php oil test --group=App
$ php oil test --group=Functional
```

## 素晴らしい本

<a href="https://tatsu-zine.com/books/fuelphp1st-2nd-3">はじめてのフレームワークとしてのFuelPHP第2版(3) 実践編</a>
