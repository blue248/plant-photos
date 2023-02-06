# アプリケーション名

Plant Photos

# アプリケーション概要

植物に特化した写真投稿アプリで、ユーザー同士でコメントし交流することができる。

# URL

https://plant-photos.onrender.com/

# テスト用アカウント

- Basic認証ID：admin
- Basic認証パスワード：2222
- メールアドレス：user01@com
- パスワード：user01

# 利用方法

## 写真投稿

1. ヘッダーの「会員登録」ボタンをクリックし、ユーザー登録を行う。
2. 「投稿する」ボタンから、投稿ページに移動し、画像と文章とタグを入力し投稿する（画像と文章は必須項目であり、タグは任意である）。
3. ログイン中で投稿者本人であれば、詳細ページで投稿内容の編集と削除をすることができる。

## コメント機能

一覧ページの画像から詳細ページに移動し、ログイン中のユーザーはその画像に対してコメントすることができる。

# アプリケーションを作成した背景

私は趣味で植物の写真を撮影することが好きで、植物に特化したSNSを自分でも制作してみたいと思った。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/1ErDRbUVKyaH3UIW6Qj0V-47f43B5BRJ1oHsZnkhey9U/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明

- 会員登録

[![Image from Gyazo](https://i.gyazo.com/71280bfb2a9ec8c5a6fb6180aaa47005.gif)](https://gyazo.com/71280bfb2a9ec8c5a6fb6180aaa47005)

- ログイン

[![Image from Gyazo](https://i.gyazo.com/4a9d468730f6bfb117e07d29778e5980.gif)](https://gyazo.com/4a9d468730f6bfb117e07d29778e5980)

- 投稿と一覧表示

[![Image from Gyazo](https://i.gyazo.com/bf449a734d4158e479eecfeaf261f153.gif)](https://gyazo.com/bf449a734d4158e479eecfeaf261f153)

- 投稿内容の編集

[![Image from Gyazo](https://i.gyazo.com/293367709b60e3eddd48f27d3fcb2cbb.gif)](https://gyazo.com/293367709b60e3eddd48f27d3fcb2cbb)

- ユーザーページ

[![Image from Gyazo](https://i.gyazo.com/9104a2390c691e1fb003826acafab4b4.gif)](https://gyazo.com/9104a2390c691e1fb003826acafab4b4)

- ユーザー情報編集

[![Image from Gyazo](https://i.gyazo.com/2582a2260134012045b45a59253e688f.gif)](https://gyazo.com/2582a2260134012045b45a59253e688f)

# 実装予定の機能

- いいね機能を実装し、自分がいいねした投稿を一覧で見られるようにする。
- 検索欄を設けて、投稿を検索できるようにする。
- ユーザーアイコンを設定できるようにする。

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/faeae52db731d8554f6e70a2b612c269.png)](https://gyazo.com/faeae52db731d8554f6e70a2b612c269)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/4ac9810262a5b983e06683cc2d146045.png)](https://gyazo.com/4ac9810262a5b983e06683cc2d146045)

# 開発環境

- フロントエンド
- バックエンド
- インフラ
- テキストエディタ
- タスク管理

# ローカルでの動作確認方法

% git clone https://github.com/blue248/plant-photos

% cd plant-photos

% bundle install

% yarn install

# 工夫したポイント

- 「投稿する」や「ログイン」などのボタンがどの機能なのか判断しやすいように配置した。
- ヘッダーはログイン中は「ログアウト」と「投稿する」ボタンを、ログアウト中は「ログイン」と「会員登録」ボタンと表示されるようにした。また、詳細ページにおいては、ログイン中のみ「編集する」と「削除する」ボタンを表示されるようにした。このようにすることで、ログイン中とログアウト中でできる操作が一目でわかるようにした。
- ログアウト中に投稿や編集ができないようにauthenticate_user!メソッドを使用した。