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

## アプリケーション名

- kondate

## アプリケーション概要

- 毎日の食事のカロリーや栄養素の計算・管理ができます。

## URL

- 

## テスト用アカウント

- basic認証パスワード：1234
- basic認証ID：admin
- メールアドレス：
- パスワード：

# 利用方法
## 献立の計画や記録

- トップページからユーザー新規登録します。
- ユーザーの目標設定をします。(ダイエットやトレーニングなど目的によって対応できる仕様)
- 献立の計画や記録ができます。
- mune登録が可能です。

##  目標

- モチベーションを保つため、グラフなどを使用し、努力を一元化できる方法を目指しています。

## アプリケーションを作成した背景

- 自分でカロリーや、栄養を計算・記録をした経験があり、計算や記録だけで膨大な時間がかかっていました。この時間をシステム化することで、モチベーションを保つことができ、継続して体調管理に集中したい。という思いから作成を考えました。

## 洗い出した要件

- [要件を定義したシート](https://docs.google.com/spreadsheets/d/1YSZ2YZBmUfqoCCrDRsDkUdYI8wVAGZElm4DW2YvbV78/edit?usp=share_link)

## 実装した機能についての画像やGIFおよびその説明

-

## 実装予定の機能

- 

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/d426dab2b0db7ff89e2ce98b3741c950.png)](https://gyazo.com/d426dab2b0db7ff89e2ce98b3741c950)
## 画面遷移図

## 開発環境

- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ

## ローカルでの動作方法

## 工夫した点

- 

# テーブル仕様
## users　テーブル

|column|type|options|
|------|----|-------|
|nickname|string|null:false|
|email|string|null:false, unique: true|
|encrypted_password|string|null:false|
 
### association

- has_one :spec
- has_many :schedules
- has_many :menus

## specsテーブル

|column|type|options|
|------|----|-------|
|user_calorie|integer|null:false|
|user_protein|integer|null:false|
|user_sugar|integer|null:false|
|user_lipid|integer|null:false|
|user|references|null:false, foreign_key:true|

### association

- belongs_to :user

## schedulesテーブル

|column|type|options|
|------|----|-------|
|user|references|null:false, foreign_key:true|
|menu|references|null:false, foreign_key:true|
|day_time_id|integer|null:false|

### association

- belongs_to :user
- belongs_to :menu

## menusテーブル

|column|type|options|
|------|----|-------|
|name|string|null:false|
|calorie|integer|null:false|
|protein|integer|null:false|
|sugar|integer|null:false|
|lipid|integer|null:false|
|user|references|null:false, foreign_key:true|

### association

- has_many :schedules
- belongs_to :user