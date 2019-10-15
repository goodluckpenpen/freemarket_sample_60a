# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null :false|
|email|string|null :false, unique :true|
|password|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|birthday|date|null: false|
|profile|text||
|tel|string|null :false, unique :true|
|image|string||

### Association
- has_many :items
- has_many :comments
- has_one :address
- has_one :card

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postal_coad|string|null :false|
|prefecture_id|references|null :false, foreign_key: true|
|city|string|null :false|
|block|string|null :false|
|building|string|null :false|
|user_id|references|null :false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :prefecture

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|number|string|null :false, unique :true|
|security_code|string|null :false|
|expiraiton-date|date|null :false|
|user-id|references|null :false, foreign_key: true|

### Association
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|
|user_id|references|null :false, foreign_key: true|
|size_id|references|null :false|
|condition_id|references|null :false|
|delivery_fee_id|references|null :false|
|delivery_method_id|references|null :false|
|delivery_area_id|references|null :false|
|delivery_days_id|references|null :false|
|price|integer|null :false|
|detail|text||
|category_id|references|null :false, foreign_key: true|
|brand_id|references||

## Association
- belongs_to :user
- belongs_to :category
- belings_to :size, :condition, :delivery_fee, :delivery_method, :delivery_area, :delivery_days
- has_many :images
- has_many :comments

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category|string||

## Association
- has_many :items
- has_ancestry

### brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||

## Association
- has_many :items

### brands-categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|brand_id|references|null :false, foreign_key: true|
|category_id|references|null :false, foreign_key: true|

## Association
- belongs_to :brand
- belongs_to :category

### commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text||
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

## Association
- belongs_to :user
- belongs_to :item


### imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null :false|
|item_id|references|null :false, foreign_key: true|

## Association
- belongs_to :item

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
