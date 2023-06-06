# Humans Like Ants

URL
https://humans-like-ants.com/

## 🐜 サービス概要 🐜
- 3Dデザイナー向けのSNSです

## 🐜 メインのターゲットユーザー 🐜
- 3Dデザインに興味がある方、始めた方

## 🐜 ユーザーが抱える課題 🐜
- 3Dで作成したモデルをお披露目する場が少ない
- 3Dで作品を作ったのに現状は写真のように投稿する場がほとんどで、面白みに欠ける

## 🐜 解決方法 🐜
- 自身で作成したモデルをアイコンとして発信できるサービスがあればいろんな人に見てもらえる可能性が広がる。

## 🐜 主な機能 🐜

### アバター変更
- ログイン時のみ。プロフィール編集画面からアバターの変更が可能
![description1](https://user-images.githubusercontent.com/89014751/228064675-8f8cf23b-66ac-48b4-9459-72c84c42c9d1.png)

### 投稿部屋での交流
- 地域選択画面
![スクリーンショット 2023-03-28 6 01 48](https://user-images.githubusercontent.com/89014751/228065925-a55a8d03-bb29-4528-86ce-4a57957ace95.png)
- 部屋の作成と入室画面
![スクリーンショット 2023-03-28 6 01 59](https://user-images.githubusercontent.com/89014751/228065920-26422350-d4df-4d3d-aa85-b0dbf174a400.png)
- 都道府県選択後、ログインユーザーが作成した部屋に入室。投稿者(アバター)が3D上に表示される。
![スクリーンショット 2023-03-28 5 51 46](https://user-images.githubusercontent.com/89014751/228064608-8ca041b3-95c6-4817-9866-5a86b692b95a.png)
- 接触時、投稿内容と、ユーザー詳細画面へのリンクが生成される
![スクリーンショット 2023-03-28 5 52 10](https://user-images.githubusercontent.com/89014751/228064625-a1b6a64c-11c3-4c98-b06e-4669676c9a24.png)
- ダブルクリック(スマホの場合いいねボタン)でいいねを発射。投稿をいいねすることができます。ユーザー詳細画面でもいいねが可能。
![スクリーンショット 2023-03-28 5 52 30](https://user-images.githubusercontent.com/89014751/228064632-3ccfb290-fc6d-4308-a544-91335a8bec77.png)

### アバター推しポイントタグでの交流
- プロフィール編集画面でアバターの推しポイント等のタグをつけることが可能。同じタグをつけたもの同士を見つけることができます。
- ヘッダー部分でタグの検索をして簡易的に検索もできます。
![tags_description](https://user-images.githubusercontent.com/89014751/228070002-feb543dc-ee14-412f-8f2a-1502443af43c.png)

### その他機能
- ランダム入室機能
  - 地域選択を行わずに、すでに生成された部屋にランダムに入室できる機能
- 管理者からの報告機能
  - 更新状況などの報告を管理者が投稿した際、Topページ上部にmarqueeのように流れる機能
  - 報告一覧が閲覧できる機能
- 投稿写真等クリックした際、写真モーダルが表示される機能

### 実装予定
- フォロー機能
- コメント機能
- google login機能
- 3D空間のフォトスナップ機能
- 3D空間読み込みのロード画面

## 🐜 なぜこのサービスを作りたいのか？ 🐜
- メタバースが流行っており、様々なサービスを利用させていただいた際に、物足りなさを感じておりました。それは、誰かが作成したモデルを装飾して楽しむのではなく、一から自作したモデルを使いたいと思った為です。同じ考えを持ったユーザーがいるかもしれないと思い「Humans Like Ants」を作成いたしました。
- また、blenderなどで作成した3Dモデルを投稿する場が比較的に少ない点と、3Dモデルを投稿出来たとしても画像が表示されている状態と変わらないような投稿に寂しさを感じた為、1人称視点でモデルと対峙できる様な形式にいたしました。

- アリのように一つの目標(餌)に向かって行列(繋がり)にを作って目標を達成してほしいという理由からアリにしています

## 画面遷移図
![スクリーンショット 2022-11-08 8 36 09](https://user-images.githubusercontent.com/89014751/200830371-d06c4909-9c6d-44dd-8765-ee49f3bde50a.png)
[figma](https://www.figma.com/file/H14i8wenDR4Jobtjkjgiol/Humans-Like-Ants?node-id=0%3A1)

## ER図
![ER図](https://user-images.githubusercontent.com/89014751/201778223-e8d932a0-3791-4375-a5c2-cbe0236c2083.png)

## 使用技術
- バックエンド
  - Ruby(3.1.2)
  - Ruby on Rails(7.0.4)
    - Hotwire
    - Stimulus
- javasriptライブラリ
  - Three.js(0.146.0)
- インフラ
  - AWS
  - MySQL2
- その他
  - Google Analytis 4

## for development
```aidl
docker-compose build
docker-compose up -d
docker-compose exec app bash
bundle exec rails s -b 0.0.0.0
```
