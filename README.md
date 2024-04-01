■サービス概要  
・子供を遊びに連れて行く場所を検索できるサービス  
・ChatGPTを利用して選択項目から場所を検索し、該当する場所を提案する  
・場所の提案で決めた行き先の交通手段（車、電車）を提示する  

■このサービスへの思い・作りたい理由  
・休日に子供を遊ばせる場所が限られており、マンネリ化してしまっている  
・遊べる場所を調べてから交通手段を調べる手間を省くため、一つのアプリで完結できるものを作りたいと考えています  

■ユーザー層について  
・子供を持つ家庭の親  

■サービスの利用イメージ  
・スマートフォンからの利用を想定しています  
・Geolocation APIを使用し位置情報を取得します  
・(1).ユーザーは遊び場に行く交通手段を選択します（車、電車）  
・(2).所要時間は30分刻みで30分から2時間まで選択できます  
・(3).子供の年齢を選択します  
・(4).外遊び場、室内遊び場、テーマパーク、体験施設の中から選択します  
・上記の選択肢から現在の位置情報を元に『公共施設のみが対象で(1)で(2)以内で(3)歳の子供が(4)できる場所を下記条件を元に10件表示してください　条件、立ち入りの許可が必要ない、公式のHPが存在する場所のみ』とGPT-4 APIにリクエストします  
・リクエスト結果からGoogle Maps APIで(2)の時間以内かつ正しく存在する場所か確認し条件を満たした場所のみ場所の画像、営業時間、公式HPを表示します  
・候補から行く場所を決めたら、Google Mapsで行く手段を提示します（車の場合はナビ、電車の場合は乗り換え案内）  
・ログイン後に行った場所の履歴を表示します  
・ログイン後に行った場所について投稿できる掲示板を提供します  

■このサービスを利用することで得られること  
・子供を遊ばせる場所を調べ、交通手段を調べる手間を減らせます  
・4つの回答で遊び場が提示されるため、手間がかかりません  
・マンネリ化した遊び場を防ぎます  
・新しい体験を子供に提供します  
・掲示板を通じて良い点や悪い点を共有できます  

■ユーザーの獲得について  
・MVPリリース後から定期的にリリース情報を発信し、自分の家族や周囲の友人に使ってもらいます  

■サービスの差別化ポイント・推しポイント  
・遊ぶ場所を提示するサービスは多いですが、交通手段も提示するサービスが検索しても見つからなかった  
・簡単に遊び場を見つけることができます  

■機能候補  
MVPリリース時に実装したいもの  
・Geolocation APIを使用して位置情報を取得  
・GPT-4 APIを使用して選択ボタンからの検索結果を表示  
・検索結果からGoogle Mapsに移動し、ナビゲーションまたは乗換案内ページを表示する  

本リリース時に実装したいもの  
・新規ユーザーの登録  
・ログイン、ログアウト機能  
・履歴の閲覧ページ  
・掲示板の作成(投稿、いいね、コメント、検索)  

■機能の実装方針  
・Geolocation API  
・GPT-4 API  
・Google Maps API    

■画面遷移図  
https://www.figma.com/file/omh7CygZv30NrX91pBU0Fy/portfolio?type=whiteboard&node-id=0-1&t=vCnPCd8q4L0IWpLl-0
