# FuelPHPStudy
Studying is fun for me. FuelPHP Version: 1.8.2

「はじめてのフレームワークとしてのFuelPHP第2版(3) 実践」をDocker環境で構築してみました。

## 公開側フォーム
http://localhost/form

## 管理側フォーム
http://localhost/admin

## phpMyAdmin
http://localhost:8080/

## Dockerコンテナ構成
```
PHPコンテナ：CentOS 7.7.1908,Apache 2.4.6,PHP 5.4.16 with Xdebug v2.2.7
DBコンテナ：mariadb-5.5.64-trusty
```

## 管理ユーザー投入
```
cd /app/fuelphp
php oil console

>>> Auth::create_user('admin', 'password', 'admin@example.jp', 100);
```

## ユニットテスト
```
cd /app/fuelphp
php oil test --group=App
php oil test --group=Functional
```

## 素晴らしい本

<a href="https://tatsu-zine.com/books/fuelphp1st-2nd-3">はじめてのフレームワークとしてのFuelPHP第2版(3) 実践編</a>
