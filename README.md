# README
こちらのURLから、ご覧いただけます。
http://3.114.48.154/

# 制作目的
- 知識のインプット・アウトプット用にオリジナルの問題集を作成したかったため。
# 特徴
- ユーザーは、一問一答の○×クイズを作成できる。
- 作成したクイズを誰でも解くことができる。
## 工夫した点
- JSを使って、ユーザーの回答とDBに保存している解答を比較し、正誤判定ができるようにした。
### 今後実装予定の機能
- 四者択一クイズや記述式のクイズを作成、解答できるようにする。
# DataBase Creation
## users table
|Column|Type  |Options                  |
|------|------|-------------------------|
|name  |text  |null: false              |
|email |string|null: false, unique: true|
### Association
- has_many :quizzes
## quizzes table
|Column     |Type      |Options          |
|-----------|----------|-----------------|
|title      |string    |null: false      |
|description|text      |                 |
|image      |string    |                 |
|user_id    |references|foreign_key: true|
### Association
- belongs_to :user
- has_many   :questions, dependent: :destroy
- accepts_nested_attributes_for :questions
## Questions table
|Column  |Type      |Options          |
|--------|----------|-----------------|
|question|text      |null: false      |
|answer  |integer   |                 |
|quiz_id |references|foreign_key: true|
### Association
- belongs_to :quiz