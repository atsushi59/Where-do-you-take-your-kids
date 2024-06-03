# サービス名：あそびばさがそ
<img src="https://i.gyazo.com/3076c4c3920b82d24c822e334d7424f6.png" alt="Image from Gyazo" width="537"/>

## **サービス概要**  
・子供を遊びに連れて行く場所を検索できるサービス  
・ChatGPTを利用して選択項目から場所を検索し、該当する場所を提案する  
・場所の提案で決めた行き先の交通手段（車、公共交通機関）を提示する  

## **このサービスへの思い・作りたい理由**  
・休日に子供を遊ばせる場所が限られており、マンネリ化してしまっている  
・遊べる場所を調べてから交通手段を調べる手間を省くため、一つのアプリで完結できるものを作りたいと考え作成しました  

## **ユーザー層について**  
・子供を持つ家庭の親  

## **サービスの利用イメージ**  
・Google Geolocation API、Google Geocoding APIで位置情報(住所)を取得します  
・(1).ユーザーは遊び場に行く交通手段を選択します（車、公共交通機関）  
・(2).所要時間を30分から2時間まで、30分刻みで選択できます   
・(3).子供の年齢を選択します(３歳以下、6歳以下、12歳以下)
・(4).公園、室内遊び場、レジャー施設の中から選択します  
・上記の選択肢を元に『現在地から(1)で正確に(2)以内で到着する(3)の子供が遊べる(4)場所を正式名称のみ8件回答してください。なるべく過去に回答していない場所を提示してください。』とGPT-4o APIにリクエストします  
・リクエスト結果からGoogle Directions API、NAVITIME Route(totalnavi)APIで(2)の時間以内か確認します  
・正しく存在する場所か確認し条件を満たした場所のみGoogle Places APIで場所の画像、営業時間、公式HP、所要時間を表示します  
・候補から行く場所を決めたらgoogle mapにアクセスし行く手段を提示します（車の場合はナビ、公共交通機関の場合は乗り換え案内）  
・ユーザーはログイン後に行った場所の履歴、過去の検索結果、お気に入りした場所の閲覧ができます  
・ユーザーはログイン後に行った場所について投稿できる掲示板を提供します  
・掲示板にはいいね、お気に入り、コメント、通知機能が使用できます  

## **このサービスを利用することで得られること**  
・子供を遊ばせる場所を調べ、交通手段を調べる手間を減らせます  
・4つの回答で遊び場が提示されるため、手間がかかりません  
・マンネリ化した遊び場を防ぎます  
・新しい体験を子供に提供します  
・掲示板を通じて良い点や悪い点を共有できます  

## **ユーザーの獲得について**  
・定期的にリリース情報を発信し、自分の家族や周囲の友人に使ってもらいます  

## **サービスの差別化ポイント・推しポイント**  
・遊ぶ場所を提示するサービスは多いですが、交通手段も提示するサービスが検索しても見つからなかった  
・簡単に遊び場を見つけることができます  

## **実装機能**  
・Geolocation API、Geocoding APIを使用して位置情報（住所）を取得  
・GPT-4o APIを使用して選択ボタンからの検索結果を表示  
・Directions API、NAVITIME Route(totalnavi)APIを使用しユーザーが選択した時間内に行ける場所のみ表示する   
・Places APIを用いて名前、住所、営業時間、公式HPの表示且つDirections API、NAVITIME Route(totalnavi)APIから取得した所要時間の表示  
・検索結果からGoogle Mapsに移動し、ナビゲーションまたは乗換案内ページを表示する  
・1日辺りの検索回数の制限  
・新規ユーザーの登録  
・ログイン、ログアウト機能  
・Google Line ログイン  
・マイページ作成  
・行った場所の履歴の閲覧ページ  
・過去に検索した場所の一覧ページ  
・検索結果からお気に入り機能と一覧ページ  
・レビューの作成(投稿、いいね、コメント、検索、通知)  

## **技術スタック**

| カテゴリ       | 技術スタック|
| ------------ | ------------ |
| フロントエンド | HTML / CSS / JavaScript / Tailwind CSS |
| バックエンド   | Ruby 3.2.3 / Ruby on Rails 7.1.3.2 |
| データベース   | PostgreSQL |
| 認証           | Devise, Omniauth |
| API            | Google Geolocation API / Google Geocoding API / Google Maps JavaScript API / Google Places API / Google Directions API / GPT-4o API / NAVITIME Route(totalnavi) API |
| 環境構築       | Docker |
| CI/CD          | GitHub Actions |
| インフラ       | Render / Amazon S3 |
| その他         | CarrierWave / Letter Opener Web |  


■画面遷移図  
https://www.figma.com/file/Zmwg6NA9cS3dE9wXsNsOQw/%E7%84%A1%E9%A1%8C?type=design&node-id=0-1&mode=design&t=vJeFECaBN8PdZ2rY-0  

■ER図
https://www.mermaidchart.com/app/projects/4feb60d4-9808-43f5-8ac2-939bd5fd67f8/diagrams/77c940ac-9313-49a4-a606-6b14ac6496cf/version/v0.1/edit