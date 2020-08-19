This was created during my time as a student at [tech-camp](https://tech-camp.in/) 

# 「アプリ名：Les enfants,venez par ici !（フランス語で「皆集まれ！」て意味です）」
このツールは、同じ趣味を持つ多くの友達を作り集めることができます。<br>
また、たくさんのイベント情報を取得できるアプリです。
![Shimokita.php](https://i.gyazo.com/12738af2c871d44924408a4a1034c4eb.jpg)
<br>
<br>
<br>

# Production background
このツールを作ったのは、今コロナウイルスで自宅にいる機会が増えました。<br>
その為、家でNetflixやAmazonプライムでアニメを見る人が急増、また家でゲームする人が増えPlayStation等の、<br>
ゲーム機が売り切れ状態となっています。<br>
これらを趣味をする人が増えたと言う事で、これらを熱く語り合う掲示板のような場が有ればと思い制作しました。<br>
しかしそれだけでは思い、これらに関係する自分な好きなイベント等を書き込めるカレンダー機能を追加しました。<br>
これにより、自分の好きなイベントをカレンダーに書き込み、そのイベントを知って貰う、そして投稿機能を使い、<br>
一緒に行きたい人を集う、それに興味を持った人・行きたいと思った人がその投稿にコメントするっといった流れで<br>
使用して貰う事も出来るようになりました。<br>
この機能が、イベント自粛で停滞しているイベント業界の、コロナ終息後のイベント活性化の貢献につながればと思っています。<br>
<br>
<br>
<br>

# Features
このツールの使用はアニメやゲームなどが趣味の方に限ります。<br>
そのような趣味を持つ人々が集まり、友達を作り、一緒に遊びに出かけることができます。
<br>
<br>
<br>

# Description
このツールには、カレンダー機能と投稿機能があります。<br>
このスケジュール機能は、誰でもカレンダー にイベント等を書き込むことができます。<br>
また、誰でもそのイベントの詳細を内容を知ることが出来ます。<br>
投稿機能では、投稿することは勿論のこと、投稿ごとにコメントを書くことができます。<br>
この２つの機能を使えば、同じ趣味の友達を作ることが出来るでしょう。
<br>
<br>
<br>

# Demo
![Shimokita.php](https://i.gyazo.com/c57ff5240c73e74c12bf7cf82da5bde8.gif)
![Shimokita.php](https://i.gyazo.com/cd95844f78a850284c065d64ad92cd9a.gif)
![Shimokita.php](https://i.gyazo.com/6521950fd2ad60de21ae610302a911ea.gif)
<br>
<br>
<br>

# Usage
```
$ git clone https://github.com/1110025y/anime.git
```

<br>
<br>
<br>

# Downloading and installing steps
1. Clone this repository
```
$ git clone https://github.com/1110025y/anime.git
```

2. Go into the repository
```
$ cd coffee-time
```

3. Install dependencies
```
$ bundle install
```

4. Create database, Run migrations and set up the database
```
$ rails db:create
$ rails db:migrate
```

5. Run the app
```
$ rails s
```
→http://localhost:3000
<br>
<br>
<br>

# Author
・Github: 1110025y
<br>
<br>
<br>

# Requirement
Rails 6.0.3.2
<br>
<br>
<br>

# License
[MIT](https://choosealicense.com/licenses/mit/) 


<br>
<br>
<br>
<br>

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :tweets
- has_many :comments
- has_one :message, dependent: :destroy
<br>

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
<br>

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :tweet
- belongs_to :user
<br>

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false|
|family_name|string|null: false|
|first_name_kana|string|null: false|
|family_name_kana|string|null: false|
|introduction|text|null: false|
|hobby|string|null: false|
|skill|string|null: false|
|likes|string|null: false|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
<br>

## blogsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|title|integer|null: false|
|start_time|datetime|null: false|