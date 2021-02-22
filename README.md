# アプリケーション内容


| アプリケーション名　　　　　　　　　|　トモリ珈琲　online shop    　　　　　　|
| アプリケーション概要　　　　　　　　|　珈琲関係のショッピングサイト　　　　　　　|
| URL  　　　　　　　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　　|
| テスト用アカウント　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　　|
| 利用方法　　　　　　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　　|
| 目指した課題解決　　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　　|
| 洗い出した要件　　　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　　|
| 実装した機能についてのGIFと説明  　|　　　　　　　　　　　　　　　　　　　　　　|
| 実装予定の機能　　　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　　|
| データベース設計　　　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　　|
| ローカルでの動作方法　　　　　　　　|　　　　　　　　　　　　　　　　　　　　　　|















# テーブル設計



 ## owners テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many   :shoppings



## shoppings テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| product_name           | string     | null: false                    |
| price                  | integer    | null: false                    |

### Association

- has_one    :order
- belongs to   :owner




## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many   :orders



## orders テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| shopping   | references | null: false, foreign_key: true |

### Association

- belongs to :user
- belongs to :shopping
- has_one    :address



## addresses テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| postal_code       | string     | null: false                    |
| prefecture_id     | integer    | null: false                    |
| city              | string     | null: false                    |
| town              | string     | null: false                    |
| building          | string     |
| phone_number      | string     | null: false                    |
| order             | references | null: false, foreign_key: true |

### Association

- belongs to :order







