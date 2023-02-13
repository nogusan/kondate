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
|date_id|integer|null:false|

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