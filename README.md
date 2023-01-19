# アプリケーション名
Plant Photos

# アプリケーション概要
植物に特化した写真投稿アプリで、ユーザー同士でコメントし交流することができる。

# URL
https://plant-photos.onrender.com/

# テスト用アカウント
- Basic認証パスワード：2222
- Basic認証ID：admin
- メールアドレス：user01@com
- パスワード：user01

# 利用方法

## 写真投稿
1. ヘッダーの「会員登録」ボタンをクリックし、ユーザー登録を行う。
2. 「投稿する」ボタンから、投稿ページに移動し、画像と文章を入力し投稿する。
3. ログイン中で投稿者本人であれば、詳細ページで投稿内容の編集と削除をすることができる。

## コメント機能
一覧ページの画像から詳細ページに移動し、ログイン中のユーザーはその画像に対してコメントすることができる。

# アプリケーションを作成した背景
私は趣味で植物の写真を撮影することが好きで、植物に特化したSNSを自分でも制作してみたいと思った。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1ErDRbUVKyaH3UIW6Qj0V-47f43B5BRJ1oHsZnkhey9U/edit#gid=982722306
# 実装した機能についての画像やGIFおよびその説明
- 会員登録

[![Image from Gyazo](https://i.gyazo.com/47914b9eef53bc0c5968c2e1803d9aa0.gif)](https://gyazo.com/47914b9eef53bc0c5968c2e1803d9aa0)

- ログイン

[![Image from Gyazo](https://i.gyazo.com/9c2e9f22922210cfd0c2b757c7ed6200.gif)](https://gyazo.com/9c2e9f22922210cfd0c2b757c7ed6200)

- ログアウト

[![Image from Gyazo](https://i.gyazo.com/f928e60d19f099be6b54d28d1771f3a1.gif)](https://gyazo.com/f928e60d19f099be6b54d28d1771f3a1)

- 投稿と一覧表示

[![Image from Gyazo](https://i.gyazo.com/bd80a8645811dfc979e57e5466aa1b8c.gif)](https://gyazo.com/bd80a8645811dfc979e57e5466aa1b8c)

- 投稿内容の詳細表示

[![Image from Gyazo](https://i.gyazo.com/c4a335c419a4beb3682c1a6a5bcc31a2.gif)](https://gyazo.com/c4a335c419a4beb3682c1a6a5bcc31a2)

- 投稿内容の編集

[![Image from Gyazo](https://i.gyazo.com/dc907a35545aa2eda87cd69d8bde323b.gif)](https://gyazo.com/dc907a35545aa2eda87cd69d8bde323b)

- 投稿内容の削除

[![Image from Gyazo](https://i.gyazo.com/753e4827f65394f43c475394c71a5719.gif)](https://gyazo.com/753e4827f65394f43c475394c71a5719)

- 投稿に対するコメント投稿と一覧表示

[![Image from Gyazo](https://i.gyazo.com/0422327ac53a18d434c85ec281415804.gif)](https://gyazo.com/0422327ac53a18d434c85ec281415804)

- ユーザーページ

[![Image from Gyazo](https://i.gyazo.com/9104a2390c691e1fb003826acafab4b4.gif)](https://gyazo.com/9104a2390c691e1fb003826acafab4b4)


# 実装予定の機能
- 投稿時にタグ付けし、タグから投稿画像を一覧で見られるようにする。
- いいね機能を実装し、自分がいいねした投稿を一覧で見られるようにする。
- 検索欄を設け、検索した文字を含む投稿を検索できるようにする。

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
- ログイン時とログアウト時で表示を変えた。
- ログアウト中に投稿や編集ができないようにauthenticate_user!メソッドを使用した。