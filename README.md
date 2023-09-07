# README

# アプリケーション名
Home Things

# アプリケーション概要
自分の持っているアイテムを簡単にわかりやすく管理するアプリ

<!-- # URL -->

<!-- # テスト用アカウント -->

## 利用方法

## 場所登録
1. トップページ(一覧ページ)のヘッダーからユーザー新規登録を行う
2. 場所作成ボタンから場所の設定を2箇所行う。

## アイテムを登録する
1. 一覧ページからアイテム登録をクリックしてフォームに沿って入力し、登録ボタンを押す。
2. 一覧ページに遷移し選んだ場所にアイテムが振り分けられる
3. ドラッグアンドドロップで場所間の移動が簡単に行える。

# アプリケーションを作成した背景
学生時代、実家から離れて暮らしていた時に、荷物を減らすために季節ごとに服や物を送り、必要なものは送ってもらうように整理していた。何が実家に残っていて、こちらの家にあるのかわからなくなり探す手間や時間が非常にかかっていた。同じように住所が複数ある方で同様の問題を抱えている方も多いと推測し、簡単に持ち物を登録でき、管理できるアプリを開発することにした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1DTys4nNqijsZBrraT12P1k09OB_3w_bmcG0PJo0a-hE/edit#gid=1788800635

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能
[![Image from Gyazo](https://i.gyazo.com/cbc958b93d8c86c165914c9c3913f32f.png)](https://gyazo.com/cbc958b93d8c86c165914c9c3913f32f)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/e2120524a25e049ac28888cac98b58f7.png)](https://gyazo.com/e2120524a25e049ac28888cac98b58f7)

<!-- # 画面遷移図 -->

# 開発環境
Ruby/Ruby on Rails/MySQL/Github//Visual Studio Code

<!-- # ローカルでの動作方法

# 工夫したポイント

# 改善点	 -->

# 制作時間
現在作成中です。

#　テーブル設計

## users テーブル
| Column             | Type   | Options                    |
| ------------------ | ------ | -------------------------- |
| nickname           | string | null: false                |
| email              | string | null: false , unique: true |
| encrypted_password | string | null: false                |

### Association
-has_many :items
-has_many :place


##　items テーブル
| Column             | Type       | Options                         |
| ------------------ | -----------| --------------------------------|
| item_name          | string     | null: false                     |
| item_description   | text       | null: false                     |
| place_id           | references | null: false , foreign_key: true |
| user_id            | references | null: false , foreign_key: true | 

### Association

- belongs_to :user
- belongs_to :place


##　places テーブル

| Column             | Type       | Options                         |
| ------------------ | -----------| --------------------------------|
| place_name         | string     | null: false                     |
| place_description  | string     | null: false                     |
| item_id            | references | null: false , foreign_key: true |
| user_id            | references | null: false , foreign_key: true | 

### Association

- has_many :item
- belongs_to :user