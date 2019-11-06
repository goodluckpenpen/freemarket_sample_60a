# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# # # 親カテゴリ
# lady = Category.create(:name=>"レディース")
# men = Category.create(:name=>"メンズ")
# baby = Category.create(:name=>"ベビー・キッズ")
# interior = Category.create(:name=>"インテリア・住まい・小物")
# hobby = Category.create(:name=>"本・音楽・ゲーム")
# toy = Category.create(:name=>"おもちゃ・ホビー・グッズ")
# cosme = Category.create(:name=>"コスメ・香水・美容")
# appliances= Category.create(:name=>"家電・スマホ・カメラ")
# sport = Category.create(:name=>"スポーツ・レジャー")
# handmade = Category.create(:name=>"ハンドメイド")
# ticket = Category.create(:name=>"チケット")
# car = Category.create(:name=>"自動車・オートバイ")
# other = Category.create(:name=>"その他")

# # # 子カテゴリ
# lady_tops = lady.children.create(:name=>"トップス")
# lady_jacket = lady.children.create(:name=>"ジャケット/アウター")
# lady_pants = lady.children.create(:name=>"パンツ")
# lady_skirt= lady.children.create(:name=>"スカート")
# lady_dress = lady.children.create(:name=>"ワンピース")
# lady_shoes = lady.children.create(:name=>"靴")
# lady_room_wear = lady.children.create(:name=>"ルームウェア/パジャマ")
# lady_leg_wear = lady.children.create(:name=>"レッグウェア")
# lady_hat = lady.children.create(:name=>"帽子")
# lady_bag = lady.children.create(:name=>"バッグ")
# lady_accessories = lady.children.create(:name=>"アクセサリー")
# lady_hair_accessories = lady.children.create(:name=>"ヘアアクセサリー")
# lady_small = lady.children.create(:name=>"小物")
# lady_watch = lady.children.create(:name=>"時計")
# lady_wig = lady.children.create(:name=>"ウィッグ/エクステ")
# lady_yukata = lady.children.create(:name=>"浴衣/水着")
# lady_suit = lady.children.create(:name=>"スーツ/フォーマル/ドレス")
# lady_matarnity = lady.children.create(:name=>"マタニティ")
# lady_other = lady.children.create(:name=>"その他")

# men_tops = men.children.create(:name=>"トップス")
# men_jacket = men.children.create(:name=>"ジャケット/アウター")
# men_pants = men.children.create(:name=>"パンツ")
# men_shoes = men.children.create(:name=>"靴")
# men_bag = men.children.create(:name=>"バッグ")
# men_suit = men.children.create(:name=>"スーツ")
# men_hat = men.children.create(:name=>"帽子")
# men_accessories = men.children.create(:name=>"アクセサリー")
# men_small = men.children.create(:name=>"小物")
# men_watch = men.children.create(:name=>"時計")
# men_swim = men.children.create(:name=>"水着")
# men_leg_wear = men.children.create(:name=>"レッグウェア")
# men_under_wear = men.children.create(:name=>"アンダーウェア")
# men_other = men.children.create(:name=>"その他")

# baby_girl_95 = baby.children.create(:name=>"ベビー服(女の子用) ~95cm")
# baby_boy_95= baby.children.create(:name=>"ベビー服(男の子用) ~95cm")
# baby_95= baby.children.create(:name=>"ベビー服(男女兼用) ~95cm")
# baby_gir_l100= baby.children.create(:name=>"キッズ服(女の子用) 100cm~")
# baby_boy_100= baby.children.create(:name=>"キッズ服(男の子用) 100cm~")
# baby_100= baby.children.create(:name=>"キッズ服(男女兼用) 100cm~")
# baby_shoes= baby.children.create(:name=>"キッズ靴")
# baby_small= baby.children.create(:name=>"子ども用ファッション小物")
# baby_diaper= baby.children.create(:name=>"おむつ/トイレ/バス")
# baby_outdoor= baby.children.create(:name=>"外出/移動用品")
# baby_meal= baby.children.create(:name=>"授乳/食事")
# baby_interior= baby.children.create(:name=>"ベビー家具/寝具/室内用品")
# baby_hoby= baby.children.create(:name=>"おもちゃ")
# baby_event= baby.children.create(:name=>"行事/記念品")
# baby_other= baby.children.create(:name=>"その他")

# interior_kitchen = interior.children.create(:name=>"キッチン/食器")
# interior_bed = interior.children.create(:name=>"ベッド/マットレス")
# interior_sofa = interior.children.create(:name=>"ソファ/ソファベッド")
# interior_chair = interior.children.create(:name=>"椅子/チェア")
# interior_desk = interior.children.create(:name=>"机/テーブル")
# interior_storage = interior.children.create(:name=>"収納家具")
# interior_carpet = interior.children.create(:name=>"ラグ/カーペット/マット")
# interior_curtain = interior.children.create(:name=>"カーテン/ブラインド")
# interior_light = interior.children.create(:name=>"ライト/照明")
# interior_bedding = interior.children.create(:name=>"寝具")
# interior_small = interior.children.create(:name=>"インテリア小物")
# interior_event = interior.children.create(:name=>"季節/年中行事")
# interior_other = interior.children.create(:name=>"その他")

# hobby_book = hobby.children.create(:name=>"本")
# hobby_comic = hobby.children.create(:name=>"漫画")
# hobby_magazine = hobby.children.create(:name=>"雑誌")
# hobby_cd = hobby.children.create(:name=>"CD")
# hobby_dvd = hobby.children.create(:name=>"DVD/ブルーレイ")
# hobby_record = hobby.children.create(:name=>"レコード")
# hobby_game = hobby.children.create(:name=>"テレビゲーム")

# toy_toy = toy.children.create(:name=>"おもちゃ")
# toy_talent = toy.children.create(:name=>"タレントグッズ")
# toy_cartoon = toy.children.create(:name=>"コミック/アニメグッズ")
# toy_card = toy.children.create(:name=>"トレーディングカード")
# toy_figure = toy.children.create(:name=>"フィギュア")
# toy_music = toy.children.create(:name=>"楽器/器材")
# toy_collection = toy.children.create(:name=>"コレクション")
# toy_military = toy.children.create(:name=>"ミリタリー")
# toy_art = toy.children.create(:name=>"美術品")
# toy_art_supplie = toy.children.create(:name=>"アート用品")
# toy_other = toy.children.create(:name=>"その他")

# cosme_basemake = cosme.children.create(:name=>"ベースメイク")
# cosme_makeup = cosme.children.create(:name=>"メイクアップ")
# cosme_nail = cosme.children.create(:name=>"ネイルケア")
# cosme_perfume = cosme.children.create(:name=>"香水")
# cosme_skin = cosme.children.create(:name=>"スキンケア/基礎化粧品")
# cosme_hiar = cosme.children.create(:name=>"ヘアケア")
# cosme_body = cosme.children.create(:name=>"ボディケア")
# cosme_oral = cosme.children.create(:name=>"オーラルケア")
# cosme_relax = cosme.children.create(:name=>"リラクゼーション")
# cosme_diet = cosme.children.create(:name=>"ダイエット")
# cosme_other = cosme.children.create(:name=>"その他")

# appliances_smartphone = appliances.children.create(:name=>"スマートフォン/携帯電話")
# appliances_smartphone_access = appliances.children.create(:name=>"スマホアクセサリー")
# appliances_pc = appliances.children.create(:name=>"PC/タブレット")
# appliances_camera = appliances.children.create(:name=>"カメラ")
# appliances_tv = appliances.children.create(:name=>"テレビ/映像機器")
# appliances_audio = appliances.children.create(:name=>"オーディオ機器")
# appliances_health = appliances.children.create(:name=>"美容/健康")
# appliances_air_condition = appliances.children.create(:name=>"冷暖房/空調")
# appliances_house_appliances = appliances.children.create(:name=>"生活家電")
# appliances_other = appliances.children.create(:name=>"その他")

# sport_golf = sport.children.create(:name=>"ゴルフ")
# sport_fishing = sport.children.create(:name=>"フィッシング")
# sport_bicycle = sport.children.create(:name=>"自転車")
# sport_training = sport.children.create(:name=>"トレーニング/エクササイズ")
# sport_baseball = sport.children.create(:name=>"野球")
# sport_soccer = sport.children.create(:name=>"サッカー/フットサル")
# sport_tennis = sport.children.create(:name=>"テニス")
# sport_snowboard = sport.children.create(:name=>"スノーボード")
# sport_skiing = sport.children.create(:name=>"スキー")
# sport_otherSport = sport.children.create(:name=>"その他スポーツ")
# sport_outdoor = sport.children.create(:name=>"アウトドア")
# sport_other = sport.children.create(:name=>"その他")

# handmade_access = handmade.children.create(:name=>"アクセサリー(女性用)")
# handmade_small = handmade.children.create(:name=>"ファッション/小物")
# handmade_watch = handmade.children.create(:name=>"アクセサリー/時計")
# handmade_interior = handmade.children.create(:name=>"日用品/インテリア")
# handmade_hobby = handmade.children.create(:name=>"趣味/おもちゃ")
# handmade_kid = handmade.children.create(:name=>"キッズ/ベビー")
# handmade_material = handmade.children.create(:name=>"素材/材料")
# handmade_fanfic = handmade.children.create(:name=>"二次創作物")
# handmade_other = handmade.children.create(:name=>"その他")

# ticket_music = ticket.children.create(:name=>"音楽")
# ticket_sport = ticket.children.create(:name=>"スポーツ")
# ticket_show = ticket.children.create(:name=>"演劇/芸能")
# ticket_evnt = ticket.children.create(:name=>"イベント")
# ticket_movie = ticket.children.create(:name=>"映画")
# ticket_amuse = ticket.children.create(:name=>"施設利用券")
# ticket_discount = ticket.children.create(:name=>"優待券/割引券")
# ticket_other = ticket.children.create(:name=>"その他")

# car_car = car.children.create(:name=>"自動車本体")
# car_tire = car.children.create(:name=>"自動車タイヤ/ホイール")
# car_car_part = car.children.create(:name=>"自動車パーツ")
# car_car_access = car.children.create(:name=>"自動車アクセサリー")
# car_bike = car.children.create(:name=>"オートバイ車体")
# car_bike_part = car.children.create(:name=>"オートバイパーツ")
# car_bike_access = car.children.create(:name=>"オートバイアクセサリー")

# other_summary = other.children.create(:name=>"まとめ売り")
# other_pet = other.children.create(:name=>"ペット用品")
# other_food = other.children.create(:name=>"食品")
# other_drink = other.children.create(:name=>"飲料/酒")
# other_necessitie = other.children.create(:name=>"日用品/生活雑貨/旅行")
# other_antique = other.children.create(:name=>"アンティーク/コレクション")
# other_stationery = other.children.create(:name=>"文房具/事務用品")
# other_office = other.children.create(:name=>"事務/店舗用品")
# other_other = other.children.create(:name=>"その他")


# # # 孫カテゴリ
# lady_tops.children.create([{name:"Tシャツ/カットソー(半袖/袖なし)"}, {name:"Tシャツ/カットソー(七分/長袖)"},{name:"シャツ/ブラウス（半袖/袖なし）"},{name:"シャツ/ブラウス（七分/長袖）"},{name:"ポロシャツ"},{name:"キャミソール"},{name:"タンクトップ"},{name:"ホルターネック"},{name:"ニット/セーター"},{name:"チュニック"},{name:"カーディガン/ボレロ"},{name:"アンサンブル"},{name:"ベスト/ジレ"},{name:"パーカー"},{name:"トレーナー/スウェット"},{name:"ペアトップ/チューブトップ"},{name:"ジャージ"},{name:"その他"}])
# lady_jacket.children.create([{name:"テーラードジャケット"},{name:"ノーカラージャケット"},{name:"Gジャン/デニムジャケット"},{name:"レザージャケット"},{name:"ダウンジャケット"},{name:"ライダースジャケット"},{name:"ミリタリージャケット"},{name:"ダウンベスト"},{name:"ジャンパー/ブルゾン"},{name:"ポンチョ"},{name:"ロングコート"},{name:"トレンチコート"},{name:"ダッフルコート"},{name:"ピーコート"},{name:"チェスターコート"},{name:"モッズコート"},{name:"スタジャン"},{name:"毛皮/ファーコート"},{name:"スプリングコート"},{name:"スカジャン"},{name:"その他"}])
# lady_pants.children.create([{name:"デニム/ジーンズ"},{name:"ショートパンツ"},{name:"カジュアルパンツ"},{name:"ハーフパンツ"},{name:"チノパン"},{name:"ワークパンツ/カーゴパンツ"},{name:"クロップドパンツ"},{name:"サロペット/オーバーオール"},{name:"オールインワン"},{name:"サルエルパンツ"},{name:"ガウチョパンツ"},{name:"その他"}])
# lady_skirt.children.create([{name:"ミニスカート"},{name:"ひざ丈スカート"},{name:"ロングスカート"},{name:"キュロット"},{name:"その他"}])
# lady_dress.children.create([{name:"ミニワンピース"},{name:"ひざ丈ワンピース"},{name:"ロングワンピース"},{name:"その他"}])
# lady_shoes.children.create([{name:"ハイヒール/パンプス"},{name:"ブーツ"},{name:"サンダル"},{name:"スニーカー"},{name:"ミュール"},{name:"モカシン"},{name:"ローファー/革靴"},{name:"フラットシューズ/バレエシューズ"},{name:"長靴/レインシューズ"},{name:"その他"}])
# lady_room_wear.children.create([{name:"パジャマ"},{name:"ルームウェア"},{name:"レッグウェア"}])
# lady_leg_wear.children.create([{name:"ソックス"},{name:"スパッツ/レギンス"},{name:"ストッキング/タイツ"},{name:"レッグウォーマー"},{name:"その他"}])
# lady_hat.children.create([{name:"ニットキャップ/ビーニー"},{name:"ハット"},{name:"ハンチング/ベレー帽"},{name:"キャップ"},{name:"キャスケット"},{name:"麦わら帽子"},{name:"その他"}])
# lady_bag.children.create([{name:"ハンドバッグ"},{name:"トートバッグ"},{name:"エコバッグ"},{name:"リュック/バックパック"},{name:"ボストンバッグ"},{name:"スポーツバッグ"},{name:"ショルダーバッグ"},{name:"クラッチバッグ"},{name:"ポーチ/バニティ"},{name:"ボディバッグ/ウェストバッグ"},{name:"マザーズバッグ"},{name:"メッセンジャーバッグ"},{name:"ビジネスバッグ"},{name:"旅行用バッグ/キャリーバッグ"},{name:"ショップ袋"},{name:"和装用バッグ"},{name:"かごバッグ"},{name:"その他"}])
# lady_accessories.children.create([{name:"ネックレス"},{name:"ブレスレット"},{name:"バングル/リストバンド"},{name:"リング"},{name:"ピアス(片耳用)"},{name:"ピアス(両耳用)"},{name:"イヤリング"},{name:"アンクレット"},{name:"ブローチ/コサージュ"},{name:"チャーム"},{name:"その他"}])
# lady_hair_accessories.children.create([{name:"ヘアゴム/シュシュ"},{name:"ヘアバンド/カチューシャ"},{name:"ヘアピン"},{name:"その他"}])
# lady_small.children.create([{name:"長財布"},{name:"折り財布"},{name:"コインケース/小銭入れ"},{name:"名刺入れ/定期入れ"},{name:"キーケース"},{name:"キーホルダー"},{name:"手袋/アームカバー"},{name:"ハンカチ"},{name:"ベルト"},{name:"マフラー/ショール"},{name:"ストール/スヌード"},{name:"バンダナ/スカーフ"},{name:"ネックウォーマー"},{name:"サスペンダー"},{name:"サングラス/メガネ"},{name:"モバイルケース/カバー"},{name:"手帳"},{name:"イヤマフラー"},{name:"傘"},{name:"レインコート/ポンチョ"},{name:"ミラー"},{name:"タバコグッズ"},{name:"その他"}])
# lady_watch.children.create([{name:"腕時計(アナログ)"},{name:"腕時計(デジタル)"},{name:"ラバーベルト"},{name:"レザーベルト"},{name:"金属ベルト"},{name:"その他"}])
# lady_wig.children.create([{name:"前髪ウィッグ"},{name:"ロングストレート"},{name:"ロングカール"},{name:"ショートストレート"},{name:"ショートカール"},{name:"その他"}])
# lady_yukata.children.create([{name:"浴衣"},{name:"着物"},{name:"振袖"},{name:"長襦袢/半襦袢"},{name:"水着セパレート"},{name:"水着ワンピース"},{name:"水着スポーツ用"},{name:"その他"}])
# lady_suit.children.create([{name:"スカートスーツ上下"},{name:"パンツスーツ上下"},{name:"ドレス"},{name:"パーティーバッグ"},{name:"シューズ"},{name:"ウェディング"},{name:"その他"}])
# lady_matarnity.children.create([{name:"トップス"},{name:"アウター"},{name:"インナー"},{name:"ワンピース"},{name:"パンツ/スパッツ"},{name:"スカート"},{name:"パジャマ"},{name:"授乳服"},{name:"その他"}])
# lady_other.children.create([{name:"コスプレ"},{name:"下着"},{name:"その他"}])

# men_tops.children.create([{name:"Tシャツ/カットソー(半袖/袖なし)"},{name:"Tシャツ/カットソー(七分/長袖)"},{name:"シャツ"},{name:"ポロシャツ"},{name:"タンクトップ"},{name:"ニット/セーター"},{name:"パーカー"},{name:"カーディガン"},{name:"スウェット"},{name:"ジャージ"},{name:"ベスト"},{name:"その他"}])
# men_jacket.children.create([{name:"テーラードジャケット"},{name:"ノーカラージャケット"},{name:"Gジャン/デニムジャケット"},{name:"レザージャケット"},{name:"ダウンジャケット"},{name:"ライダースジャケット"},{name:"ミリタリージャケット"},{name:"ナイロンジャケット"},{name:"フライトジャケット"},{name:"ダッフルコート"},{name:"ピーコート"},{name:"ステンカラーコート"},{name:"トレンチコート"},{name:"モッズコート"},{name:"チェスターコート"},{name:"スタジャン"},{name:"スカジャン"},{name:"ブルゾン"},{name:"マウンテンパーカー"},{name:"ダウンベスト"},{name:"ポンチョ"},{name:"カバーオール"},{name:"その他"}])
# men_pants.children.create([{name:"デニム/ジーンズ"},{name:"ワークパンツ/カーゴパンツ"},{name:"スラックス"},{name:"チノパン"},{name:"ショートパンツ"},{name:"ペインターパンツ"},{name:"サルエルパンツ"},{name:"オーバーオール"},{name:"その他"}])
# men_shoes.children.create([{name:"スニーカー"},{name:"サンダル"},{name:"ブーツ"},{name:"モカシン"},{name:"ドレス/ビジネス"},{name:"長靴/レインシューズ"},{name:"デッキシューズ"},{name:"その他"}])
# men_bag.children.create([{name:"ショルダーバッグ"},{name:"トートバッグ"},{name:"ボストンバッグ"},{name:"リュック/バックパック"},{name:"ウエストポーチ"},{name:"ボディーバッグ"},{name:"ドラムバッグ"},{name:"ビジネスバッグ"},{name:"トラベルバッグ"},{name:"メッセンジャーバッグ"},{name:"エコバッグ"},{name:"その他"}])
# men_suit.children.create([{name:"スーツジャケット"},{name:"スーツベスト"},{name:"スラックス"},{name:"セットアップ"},{name:"その他"}])
# men_hat.children.create([{name:"キャップ"},{name:"ハット"},{name:"ニットキャップ/ビーニー"},{name:"ハンチング/ベレー帽"},{name:"キャスケット"},{name:"サンバイザー"},{name:"その他"}])
# men_accessories.children.create([{name:"ネックレス"},{name:"ブレスレット"},{name:"バングル/リストバンド"},{name:"リング"},{name:"ピアス(片耳用)"},{name:"ピアス(両耳用)"},{name:"アンクレット"},{name:"その他"}])
# men_small.children.create([{name:"長財布"},{name:"折り財布"},{name:"マネークリップ"},{name:"コインケース/小銭入れ"},{name:"名刺入れ/定期入れ"},{name:"キーケース"},{name:"キーホルダー"},{name:"ネクタイ"},{name:"手袋"},{name:"ハンカチ"},{name:"ベルト"},{name:"マフラー"},{name:"ストール"},{name:"バンダナ"},{name:"ネックウォーマー"},{name:"サスペンダー"},{name:"ウォレットチェーン"},{name:"サングラス/メガネ"},{name:"モバイルケース/カバー"},{name:"手帳"},{name:"ストラップ"},{name:"ネクタイピン"},{name:"カフリンクス"},{name:"イヤマフラー"},{name:"傘"},{name:"レインコート"},{name:"ミラー"},{name:"タバコグッズ"},{name:"その他"}])
# men_watch.children.create([{name:"腕時計(アナログ)"},{name:"腕時計(デジタル)"},{name:"ラバーベルト"},{name:"レザーベルト"},{name:"金属ベルト"},{name:"その他"}])
# men_swim.children.create([{name:"一般水着"},{name:"スポーツ用"},{name:"アクセサリー"},{name:"その他"}])
# men_leg_wear.children.create([{name:"ソックス"},{name:"レギンス/スパッツ"},{name:"レッグウォーマー"},{name:"その他"}])
# men_under_wear.children.create([{name:"トランクス"},{name:"ボクサーパンツ"},{name:"その他"}])
# men_other.children.create([{name:"その他"}])

# baby_girl_95.children.create([{name:"トップス"},{name:"アウター"},{name:"パンツ"},{name:"スカート"},{name:"ワンピース"},{name:"ベビードレス"},{name:"おくるみ"},{name:"下着/肌着"},{name:"パジャマ"},{name:"ロンパース"},{name:"その他"}])
# baby_boy_95.children.create([{name:"トップス"},{name:"アウター"},{name:"パンツ"},{name:"おくるみ"},{name:"下着/肌着"},{name:"パジャマ"},{name:"ロンパース"},{name:"その他"}])
# baby_95.children.create([{name:"トップス"},{name:"アウター"},{name:"パンツ"},{name:"おくるみ"},{name:"下着/肌着"},{name:"パジャマ"},{name:"ロンパース"},{name:"その他"}])
# baby_gir_l100.children.create([{name:"コート"},{name:"ジャケット/上着"},{name:"トップス(Tシャツ/カットソー)"},{name:"トップス(トレーナー)"},{name:"トップス(チュニック)"},{name:"トップス(タンクトップ)"},{name:"トップス(その他)"},{name:"スカート"},{name:"パンツ"},{name:"ワンピース"},{name:"セットアップ"},{name:"パジャマ"},{name:"フォーマル/ドレス"},{name:"和服"},{name:"浴衣"},{name:"甚平"},{name:"水着"},{name:"その他"}])
# baby_boy_100.children.create([{name:"コート"},{name:"ジャケット/上着"},{name:"トップス(Tシャツ/カットソー)"},{name:"トップス(トレーナー)"},{name:"トップス(その他)"},{name:"パンツ"},{name:"セットアップ"},{name:"パジャマ"},{name:"フォーマル/ドレス"},{name:"和服"},{name:"浴衣"},{name:"甚平"},{name:"水着"},{name:"その他"}])
# baby_100.children.create([{name:"コート"},{name:"ジャケット/上着"},{name:"トップス(Tシャツ/カットソー)"},{name:"トップス(トレーナー)"},{name:"トップス(その他)"},{name:"ボトムス"},{name:"パジャマ"},{name:"その他"}])
# baby_shoes.children.create([{name:"スニーカー"},{name:"サンダル"},{name:"ブーツ"},{name:"長靴"},{name:"その他"}])
# baby_small.children.create([{name:"靴下/スパッツ"},{name:"帽子"},{name:"エプロン"},{name:"サスペンダー"},{name:"タイツ"},{name:"ハンカチ"},{name:"バンダナ"},{name:"ベルト"},{name:"マフラー"},{name:"傘"},{name:"手袋"},{name:"スタイ"},{name:"バッグ"},{name:"その他"}])
# baby_diaper.children.create([{name:"おむつ用品"},{name:"おまる/補助便座"},{name:"トレーニングパンツ"},{name:"ベビーバス"},{name:"お風呂用品"},{name:"その他"}])
# baby_outdoor.children.create([{name:"ベビーカー"},{name:"抱っこひも/スリング"},{name:"チャイルドシート"},{name:"その他"}])
# baby_meal.children.create([{name:"ミルク"},{name:"ベビーフード"},{name:"ベビー用食器"},{name:"その他"}])
# baby_interior.children.create([{name:"ベッド"},{name:"布団/毛布"},{name:"イス"},{name:"たんす"},{name:"その他"}])
# baby_hoby.children.create([{name:"おふろのおもちゃ"},{name:"がらがら"},{name:"オルゴール"},{name:"ベビージム"},{name:"手押し車/カタカタ"},{name:"知育玩具"},{name:"その他"}])
# baby_event.children.create([{name:"お宮参り用品"},{name:"お食い初め用品"},{name:"アルバム"},{name:"手形/足形"},{name:"その他"}])
# baby_other.children.create([{name:"母子手帳用品"},{name:"その他"}])

# interior_kitchen.children.create([{name:"食器"},{name:"調理器具"},{name:"収納/キッチン雑貨"},{name:"弁当用品"},{name:"カトラリー(スプーン等)"},{name:"テーブル用品"},{name:"容器"},{name:"エプロン"},{name:"アルコールグッズ"},{name:"浄水機"},{name:"その他"}])
# interior_bed.children.create([{name:"セミシングルベッド"},{name:"シングルベッド"},{name:"セミダブルベッド"},{name:"ダブルベッド"},{name:"ワイドダブルベッド"},{name:"クイーンベッド"},{name:"キングベッド"},{name:"脚付きマットレスベッド"},{name:"マットレス"},{name:"すのこベッド"},{name:"ロフトベッド/システムベッド"},{name:"簡易ベッド/折りたたみベッド"},{name:"収納付き"},{name:"その他"}])
# interior_sofa.children.create([{name:"ソファセット"},{name:"シングルソファ"},{name:"ラブソファ"},{name:"トリプルソファ"},{name:"オットマン"},{name:"コーナーソファ"},{name:"ビーズソファ/クッションソファ"},{name:"ローソファ/フロアソファ"},{name:"ソファベッド"},{name:"応接セット"},{name:"ソファカバー"},{name:"リクライニングソファ"},{name:"その他"}])
# interior_chair.children.create([{name:"一般"},{name:"スツール"},{name:"ダイニングチェア"},{name:"ハイバックチェア"},{name:"ロッキングチェア"},{name:"座椅子"},{name:"折り畳みイス"},{name:"デスクチェア"},{name:"その他"}])
# interior_desk.children.create([{name:"こたつ"},{name:"カウンターテーブル"},{name:"サイドテーブル"},{name:"センターテーブル"},{name:"ダイニングテーブル"},{name:"座卓/ちゃぶ台"},{name:"アウトドア用"},{name:"パソコン用"},{name:"事務机/学習机"},{name:"その他"}])
# interior_storage.children.create([{name:"リビング収納"},{name:"キッチン収納"},{name:"玄関/屋外収納"},{name:"バス/トイレ収納"},{name:"本収納"},{name:"本/CD/DVD収納"},{name:"洋服タンス/押入れ収納"},{name:"電話台/ファックス台"},{name:"ドレッサー/鏡台"},{name:"棚/ラック"},{name:"ケース/ボックス"},{name:"その他"}])
# interior_carpet.children.create([{name:"ラグ"},{name:"カーペット"},{name:"ホットカーペット"},{name:"玄関/キッチンマット"},{name:"トイレ/バスマット"},{name:"その他"}])
# interior_curtain.children.create([{name:"カーテン"},{name:"ブラインド"},{name:"ロールスクリーン"},{name:"のれん"},{name:"その他"}])
# interior_light.children.create([{name:"蛍光灯/電球"},{name:"天井照明"},{name:"フロアスタンド"},{name:"その他"}])
# interior_bedding.children.create([{name:"布団/毛布"},{name:"枕"},{name:"シーツ/カバー"},{name:"その他"}])
# interior_small.children.create([{name:"ごみ箱"},{name:"ウェルカムボード"},{name:"オルゴール"},{name:"クッション"},{name:"クッションカバー"},{name:"スリッパラック"},{name:"ティッシュボックス"},{name:"バスケット/かご"},{name:"フォトフレーム"},{name:"マガジンラック"},{name:"モビール"},{name:"花瓶"},{name:"灰皿"},{name:"傘立て"},{name:"小物入れ"},{name:"置時計"},{name:"掛時計/柱時計"},{name:"鏡(立て掛け式)"},{name:"鏡(壁掛け式)"},{name:"置物"},{name:"風鈴"},{name:"植物/観葉植物"},{name:"その他"}])
# interior_event.children.create([{name:"正月"},{name:"成人式"},{name:"バレンタインデー"},{name:"ひな祭り"},{name:"子どもの日"},{name:"母の日"},{name:"父の日"},{name:"サマーギフト/お中元"},{name:"夏/夏休み"},{name:"ハロウィン"},{name:"敬老の日"},{name:"七五三"},{name:"お歳暮"},{name:"クリスマス"},{name:"冬一般"},{name:"その他"}])
# interior_other.children.create([{name:"その他"}])

# hobby_book.children.create([{name:"文学/小説"},{name:"人文/社会"},{name:"ノンフィクション/教養"},{name:"地図/旅行ガイド"},{name:"ビジネス/経済"},{name:"健康/医学"},{name:"コンピュータ/IT"},{name:"趣味/スポーツ/実用"},{name:"住まい/暮らし/子育て"},{name:"アート/エンタメ"},{name:"洋書"},{name:"絵本"},{name:"参考書"},{name:"その他"}])
# hobby_comic.children.create([{name:"全巻セット"},{name:"少年漫画"},{name:"少女漫画"},{name:"青年漫画"},{name:"女性漫画"},{name:"同人誌"},{name:"その他"}])
# hobby_magazine.children.create([{name:"アート/エンタメ/ホビー"},{name:"ファッション"},{name:"ニュース/総合"},{name:"趣味/スポーツ"},{name:"その他"}])
# hobby_cd.children.create([{name:"邦楽"},{name:"洋楽"},{name:"アニメ"},{name:"クラシック"},{name:"K-POP/アジア"},{name:"キッズ/ファミリー"},{name:"その他"}])
# hobby_dvd.children.create([{name:"外国映画"},{name:"日本映画"},{name:"アニメ"},{name:"TVドラマ"},{name:"ミュージック"},{name:"お笑い/バラエティ"},{name:"スポーツ/フィットネス"},{name:"キッズ/ファミリー"},{name:"その他"}])
# hobby_record.children.create([{name:"邦楽"},{name:"洋楽"},{name:"その他"}])
# hobby_game.children.create([{name:"家庭用ゲーム本体"},{name:"家庭用ゲームソフト"},{name:"携帯用ゲーム本体"},{name:"携帯用ゲームソフト"},{name:"PCゲーム"},{name:"その他"}])

# toy_toy.children.create([{name:"キャラクターグッズ"},{name:"ぬいぐるみ"},{name:"小物/アクセサリー"},{name:"模型/プラモデル"},{name:"ミニカー"},{name:"トイラジコン"},{name:"プラモデル"},{name:"ホビーラジコン"},{name:"鉄道模型"},{name:"その他"}])
# toy_talent.children.create([{name:"アイドル"},{name:"ミュージシャン"},{name:"タレント/お笑い芸人"},{name:"スポーツ選手"},{name:"その他"}])
# toy_cartoon.children.create([{name:"ストラップ"},{name:"キーホルダー"},{name:"バッジ"},{name:"カード"},{name:"クリアファイル"},{name:"ポスター"},{name:"タオル"},{name:"その他"}])
# toy_card.children.create([{name:"遊戯王"},{name:"マジック：ザ・ギャザリング"},{name:"ポケモンカードゲーム"},{name:"デュエルマスターズ"},{name:"バトルスピリッツ"},{name:"プリパラ"},{name:"アイカツ"},{name:"カードファイト!! ヴァンガード"},{name:"ヴァイスシュヴァルツ"},{name:"プロ野球オーナーズリーグ"},{name:"ベースボールヒーローズ"},{name:"ドラゴンボール"},{name:"スリーブ"},{name:"その他"}])
# toy_figure.children.create([{name:"コミック/アニメ"},{name:"特撮"},{name:"ゲームキャラクター"},{name:"SF/ファンタジー/ホラー"},{name:"アメコミ"},{name:"スポーツ"},{name:"ミリタリー"},{name:"その他"}])
# toy_music.children.create([{name:"エレキギター"},{name:"アコースティックギター"},{name:"ベース"},{name:"エフェクター"},{name:"アンプ"},{name:"弦楽器"},{name:"管楽器"},{name:"鍵盤楽器"},{name:"打楽器"},{name:"和楽器"},{name:"楽譜/スコア"},{name:"レコーディング/PA機器"},{name:"DJ機器"},{name:"DTM/DAW"},{name:"その他"}])
# toy_collection.children.create([{name:"武具"},{name:"使用済切手/官製はがき"},{name:"旧貨幣/金貨/銀貨/記念硬貨"},{name:"印刷物"},{name:"ノベルティグッズ"},{name:"その他"}])
# toy_military.children.create([{name:"トイガン"},{name:"個人装備"},{name:"その他"}])
# toy_art.children.create([{name:"陶芸"},{name:"ガラス"},{name:"漆芸"},{name:"金属工芸"},{name:"絵画/タペストリ"},{name:"版画"},{name:"彫刻/オブジェクト"},{name:"書"},{name:"写真"},{name:"その他"}])
# toy_art_supplie.children.create([{name:"画材"},{name:"額縁"},{name:"その他"}])
# toy_other.children.create([{name:"トランプ/UNO"},{name:"カルタ/百人一首"},{name:"ダーツ"},{name:"ビリヤード"},{name:"麻雀"},{name:"パズル/ジグソーパズル"},{name:"囲碁/将棋"},{name:"オセロ/チェス"},{name:"人生ゲーム"},{name:"野球/サッカーゲーム"},{name:"スポーツ"},{name:"三輪車/乗り物"},{name:"ヨーヨー"},{name:"模型製作用品"},{name:"鉄道"},{name:"航空機"},{name:"アマチュア無線"},{name:"パチンコ/パチスロ"},{name:"その他"}])

# cosme_basemake.children.create([{name:"ファンデーション"},{name:"化粧下地"},{name:"コントロールカラー"},{name:"BBクリーム"},{name:"CCクリーム"},{name:"コンシーラー"},{name:"フェイスパウダー"},{name:"トライアルセット/サンプル"},{name:"その他"}])
# cosme_makeup.children.create([{name:"アイシャドウ"},{name:"口紅"},{name:"リップグロス"},{name:"リップライナー"},{name:"チーク"},{name:"フェイスカラー"},{name:"マスカラ"},{name:"アイライナー"},{name:"つけまつげ"},{name:"アイブロウペンシル"},{name:"パウダーアイブロウ"},{name:"眉マスカラ"},{name:"トライアルセット/サンプル"},{name:"メイク道具/化粧小物"},{name:"美顔用品/美顔ローラー"},{name:"その他"}])
# cosme_nail.children.create([{name:"ネイルカラー"},{name:"カラージェル"},{name:"ネイルベースコート/トップコート"},{name:"ネイルアート用品"},{name:"ネイルパーツ"},{name:"ネイルチップ/付け爪"},{name:"手入れ用具"},{name:"除光液"},{name:"その他"}])
# cosme_perfume.children.create([{name:"香水(女性用)"},{name:"香水(男性用)"},{name:"ユニセックス"},{name:"ボディミスト"},{name:"その他"}])
# cosme_skin.children.create([{name:"化粧水/ローション"},{name:"乳液/ミルク"},{name:"美容液"},{name:"フェイスクリーム"},{name:"洗顔料"},{name:"クレンジング/メイク落とし"},{name:"パック/フェイスマスク"},{name:"ジェル/ゲル"},{name:"ブースター/導入液"},{name:"アイケア"},{name:"リップケア"},{name:"トライアルセット/サンプル"},{name:"洗顔グッズ"},{name:"その他"}])
# cosme_hiar.children.create([{name:"シャンプー"},{name:"トリートメント"},{name:"コンディショナー"},{name:"リンス"},{name:"スタイリング剤"},{name:"カラーリング剤"},{name:"ブラシ"},{name:"その他"}])
# cosme_body.children.create([{name:"オイル/クリーム"},{name:"ハンドクリーム"},{name:"ローション"},{name:"日焼け止め/サンオイル"},{name:"ボディソープ"},{name:"入浴剤"},{name:"制汗/デオドラント"},{name:"フットケア"},{name:"その他"}])
# cosme_oral.children.create([{name:"口臭防止/エチケット用品"},{name:"歯ブラシ"},{name:"その他"}])
# cosme_relax.children.create([{name:"エッセンシャルオイル"},{name:"芳香器"},{name:"お香/香炉"},{name:"キャンドル"},{name:"リラクゼーショングッズ"},{name:"その他"}])
# cosme_diet.children.create([{name:"ダイエット食品"},{name:"エクササイズ用品"},{name:"体重計"},{name:"体脂肪計"},{name:"その他"}])
# cosme_other.children.create([{name:"健康用品"},{name:"看護/介護用品"},{name:"救急/衛生用品"},{name:"その他"}])

# appliances_smartphone.children.create([{name:"スマートフォン本体"},{name:"バッテリー/充電器"},{name:"携帯電話本体"},{name:"PHS本体"},{name:"その他"}])
# appliances_smartphone_access.children.create([{name:"Android用ケース"},{name:"iPhone用ケース"},{name:"カバー"},{name:"イヤホンジャック"},{name:"ストラップ"},{name:"フィルム"},{name:"自撮り棒"},{name:"その他"}])
# appliances_pc.children.create([{name:"タブレット"},{name:"ノートPC"},{name:"デスクトップ型PC"},{name:"ディスプレイ"},{name:"電子ブックリーダー"},{name:"PC周辺機器"},{name:"PCパーツ"},{name:"その他"}])
# appliances_camera.children.create([{name:"デジタルカメラ"},{name:"ビデオカメラ"},{name:"レンズ(単焦点)"},{name:"レンズ(ズーム)"},{name:"フィルムカメラ"},{name:"防犯カメラ"},{name:"その他"}])
# appliances_tv.children.create([{name:"テレビ"},{name:"プロジェクター"},{name:"ブルーレイレコーダー"},{name:"DVDレコーダー"},{name:"ブルーレイプレーヤー"},{name:"DVDプレーヤー"},{name:"映像用ケーブル"},{name:"その他"}])
# appliances_audio.children.create([{name:"ポータブルプレーヤー"},{name:"イヤフォン"},{name:"ヘッドフォン"},{name:"アンプ"},{name:"スピーカー"},{name:"ケーブル/シールド"},{name:"ラジオ"},{name:"その他"}])
# appliances_health.children.create([{name:"ヘアドライヤー"},{name:"ヘアアイロン"},{name:"美容機器"},{name:"電気シェーバー"},{name:"電動歯ブラシ"},{name:"その他"}])
# appliances_air_condition.children.create([{name:"エアコン"},{name:"空気清浄器"},{name:"加湿器"},{name:"扇風機"},{name:"除湿機"},{name:"ファンヒーター"},{name:"電気ヒーター"},{name:"オイルヒーター"},{name:"ストーブ"},{name:"ホットカーペット"},{name:"こたつ"},{name:"電気毛布"},{name:"その他"}])
# appliances_house_appliances.children.create([{name:"冷蔵庫"},{name:"洗濯機"},{name:"炊飯器"},{name:"電子レンジ/オーブン"},{name:"調理機器"},{name:"アイロン"},{name:"掃除機"},{name:"エスプレッソマシン"},{name:"コーヒーメーカー"},{name:"衣類乾燥機"},{name:"その他"}])
# appliances_other.children.create([{name:"その他"}])

# sport_golf.children.create([{name:"クラブ"},{name:"ウエア(男性用)"},{name:"ウエア(女性用)"},{name:"バッグ"},{name:"シューズ(男性用)"},{name:"シューズ(女性用)"},{name:"アクセサリー"},{name:"その他"}])
# sport_fishing.children.create([{name:"ロッド"},{name:"リール"},{name:"ルアー用品"},{name:"ウエア"},{name:"釣り糸/ライン"},{name:"その他"}])
# sport_bicycle.children.create([{name:"自転車本体"},{name:"ウエア"},{name:"パーツ"},{name:"アクセサリー"},{name:"バッグ"},{name:"工具/メンテナンス"},{name:"その他"}])
# sport_training.children.create([{name:"ランニング"},{name:"ウォーキング"},{name:"ヨガ"},{name:"トレーニング用品"},{name:"その他"}])
# sport_baseball.children.create([{name:"ウェア"},{name:"シューズ"},{name:"グローブ"},{name:"バット"},{name:"アクセサリー"},{name:"防具"},{name:"練習機器"},{name:"記念グッズ"},{name:"応援グッズ"},{name:"その他"}])
# sport_soccer.children.create([{name:"ウェア"},{name:"シューズ"},{name:"ボール"},{name:"アクセサリー"},{name:"記念グッズ"},{name:"応援グッズ"},{name:"その他"}])
# sport_tennis.children.create([{name:"ラケット(硬式用)"},{name:"ラケット(軟式用)"},{name:"ウェア"},{name:"シューズ"},{name:"ボール"},{name:"アクセサリー"},{name:"記念グッズ"},{name:"応援グッズ"},{name:"その他"}])
# sport_snowboard.children.create([{name:"ボード"},{name:"バインディング"},{name:"ブーツ(男性用)"},{name:"ブーツ(女性用)"},{name:"ブーツ(子ども用)"},{name:"ウエア/装備(男性用)"},{name:"ウエア/装備(女性用)"},{name:"ウエア/装備(子ども用)"},{name:"アクセサリー"},{name:"バッグ"},{name:"その他"}])
# sport_skiing.children.create([{name:"板"},{name:"ブーツ(男性用)"},{name:"ブーツ(女性用)"},{name:"ブーツ(子ども用)"},{name:"ビンディング"},{name:"ウエア(男性用)"},{name:"ウエア(女性用)"},{name:"ウエア(子ども用)"},{name:"ストック"},{name:"その他"}])
# sport_otherSport.children.create([{name:"ダンス/バレエ"},{name:"サーフィン"},{name:"バスケットボール"},{name:"バドミントン"},{name:"バレーボール"},{name:"スケートボード"},{name:"陸上競技"},{name:"ラグビー"},{name:"アメリカンフットボール"},{name:"ボクシング"},{name:"ボウリング"},{name:"その他"}])
# sport_outdoor.children.create([{name:"テント/タープ"},{name:"ライト/ランタン"},{name:"寝袋/寝具"},{name:"テーブル/チェア"},{name:"ストーブ/コンロ"},{name:"調理器具"},{name:"食器"},{name:"登山用品"},{name:"その他"}])
# sport_other.children.create([{name:"旅行用品"},{name:"その他"}])

# handmade_access.children.create([{name:"ピアス"},{name:"イヤリング"},{name:"ネックレス"},{name:"ブレスレット"},{name:"リング"},{name:"チャーム"},{name:"ヘアゴム"},{name:"アンクレット"},{name:"その他"}])
# handmade_small.children.create([{name:"バッグ(女性用)"},{name:"バッグ(男性用)"},{name:"財布(女性用)"},{name:"財布(男性用)"},{name:"ファッション雑貨"},{name:"その他"}])
# handmade_watch.children.create([{name:"アクセサリー(男性用)"},{name:"時計(女性用)"},{name:"時計(男性用)"},{name:"その他"}])
# handmade_interior.children.create([{name:"キッチン用品"},{name:"家具"},{name:"文房具"},{name:"アート/写真"},{name:"アロマ/キャンドル"},{name:"フラワー/ガーデン"},{name:"その他"}])
# handmade_hobby.children.create([{name:"クラフト/布製品"},{name:"おもちゃ/人形"},{name:"その他"}])
# handmade_kid.children.create([{name:"ファッション雑貨"},{name:"スタイ/よだれかけ"},{name:"外出用品"},{name:"ネームタグ"},{name:"その他"}])
# handmade_material.children.create([{name:"各種パーツ"},{name:"生地/糸"},{name:"型紙/パターン"},{name:"その他"}])
# handmade_fanfic.children.create([{name:"Ingress"},{name:"クリエイターズ宇宙兄弟"},{name:"シンデレラガールズCPグッズ"}])
# handmade_other.children.create([{name:"その他"}])

# ticket_music.children.create([{name:"男性アイドル"},{name:"女性アイドル"},{name:"韓流"},{name:"国内アーティスト"},{name:"海外アーティスト"},{name:"音楽フェス"},{name:"声優/アニメ"},{name:"その他"}])
# ticket_sport.children.create([{name:"サッカー"},{name:"野球"},{name:"テニス"},{name:"格闘技/プロレス"},{name:"相撲/武道"},{name:"ゴルフ"},{name:"バレーボール"},{name:"バスケットボール"},{name:"モータースポーツ"},{name:"ウィンタースポーツ"},{name:"その他"}])
# ticket_show.children.create([{name:"ミュージカル"},{name:"演劇"},{name:"伝統芸能"},{name:"落語"},{name:"お笑い"},{name:"オペラ"},{name:"サーカス"},{name:"バレエ"},{name:"その他"}])
# ticket_evnt.children.create([{name:"声優/アニメ"},{name:"キッズ/ファミリー"},{name:"トークショー/講演会"},{name:"その他"}])
# ticket_movie.children.create([{name:"邦画"},{name:"洋画"},{name:"その他"}])
# ticket_amuse.children.create([{name:"遊園地/テーマパーク"},{name:"美術館/博物館"},{name:"スキー場"},{name:"ゴルフ場"},{name:"フィットネスクラブ"},{name:"プール"},{name:"ボウリング場"},{name:"水族館"},{name:"動物園"},{name:"その他"}])
# ticket_discount.children.create([{name:"ショッピング"},{name:"レストラン/食事券"},{name:"フード/ドリンク券"},{name:"宿泊券"},{name:"その他"}])
# ticket_other.children.create([{name:"その他"}])

# car_car.children.create([{name:"国内自動車本体"},{name:"外国自動車本体"}])
# car_tire.children.create([{name:"タイヤ/ホイールセット"},{name:"タイヤ"},{name:"ホイール"},{name:"その他"}])
# car_car_part.children.create([{name:"サスペンション"},{name:"ブレーキ"},{name:"外装、エアロパーツ"},{name:"ライト"},{name:"内装品、シート"},{name:"ステアリング"},{name:"マフラー・排気系"},{name:"エンジン、過給器、冷却装置"},{name:"クラッチ、ミッション、駆動系"},{name:"電装品"},{name:"補強パーツ"},{name:"汎用パーツ"},{name:"外国自動車用パーツ"},{name:"その他"}])
# car_car_access.children.create([{name:"車内アクセサリー"},{name:"カーナビ"},{name:"カーオーディオ"},{name:"車外アクセサリー"},{name:"メンテナンス用品"},{name:"チャイルドシート"},{name:"ドライブレコーダー"},{name:"レーダー探知機"},{name:"カタログ/マニュアル"},{name:"セキュリティ"},{name:"ETC"},{name:"その他"}])
# car_bike_part.children.create([{name:"タイヤ"},{name:"マフラー"},{name:"エンジン、冷却装置"},{name:"カウル、フェンダー、外装"},{name:"サスペンション"},{name:"ホイール"},{name:"シート"},{name:"ブレーキ"},{name:"タンク"},{name:"ライト、ウィンカー"},{name:"チェーン、スプロケット、駆動系"},{name:"メーター"},{name:"電装系"},{name:"ミラー"},{name:"外国オートバイ用パーツ"},{name:"その他"}])
# car_bike_access.children.create([{name:"ヘルメット/シールド"},{name:"バイクウエア/装備"},{name:"アクセサリー"},{name:"メンテナンス"},{name:"カタログ/マニュアル"},{name:"その他"}])

# other_pet.children.create([{name:"ペットフード"},{name:"犬用品"},{name:"猫用品"},{name:"魚用品/水草"},{name:"小動物用品"},{name:"爬虫類/両生類用品"},{name:"かご/おり"},{name:"鳥用品"},{name:"虫類用品"},{name:"その他"}])
# other_food.children.create([{name:"菓子"},{name:"米"},{name:"野菜"},{name:"果物"},{name:"調味料"},{name:"魚介類(加工食品)"},{name:"肉類(加工食品)"},{name:"その他 加工食品"},{name:"その他"}])
# other_drink.children.create([{name:"コーヒー"},{name:"ソフトドリンク"},{name:"ミネラルウォーター"},{name:"茶"},{name:"ウイスキー"},{name:"ワイン"},{name:"ブランデー"},{name:"焼酎"},{name:"日本酒"},{name:"ビール、発泡酒"},{name:"その他"}])
# other_necessitie.children.create([{name:"タオル/バス用品"},{name:"日用品/生活雑貨"},{name:"洗剤/柔軟剤"},{name:"旅行用品"},{name:"防災関連グッズ"},{name:"その他"}])
# other_antique.children.create([{name:"雑貨"},{name:"工芸品"},{name:"家具"},{name:"印刷物"},{name:"その他"}])
# other_stationery.children.create([{name:"筆記具"},{name:"ノート/メモ帳"},{name:"テープ/マスキングテープ"},{name:"カレンダー/スケジュール"},{name:"アルバム/スクラップ"},{name:"ファイル/バインダー"},{name:"はさみ/カッター"},{name:"カードホルダー/名刺管理"},{name:"のり/ホッチキス"},{name:"その他"}])
# other_office.children.create([{name:"オフィス用品一般"},{name:"オフィス家具"},{name:"店舗用品"},{name:"OA機器"},{name:"ラッピング/包装"},{name:"その他"}])
# other_other.children.create([{name:"その他"}])


# Condition.create!([{condition:"新品、未使用"},{condition:"未使用に近い"},{condition:"目立った傷汚れなし"},{condition:"やや傷や汚れあり"},{condition:"傷や汚れあり"},{condition:"全体的に状態が悪い"}])

# DeliveryArea.create!([{area:"北海道"},{area:"青森県"},{area:"岩手県"},{area:"宮城県"},{area:"秋田県"},{area:"山梨県"},{area:"福島県"},{area:"茨城県"},{area:"栃木県"},{area:"群馬県"},{area:"埼玉県"},{area:"千葉県"},{area:"東京都"},{area:"神奈川県"},{area:"新潟県"},{area:"富山県"},{area:"石川県"},{area:"福井県"},{area:"山梨県"},{area:"長野県"},{area:"岐阜県"},{area:"静岡県"},{area:"愛知県"},{area:"三重県"},{area:"滋賀県"},{area:"京都府"},{area:"大阪府"},{area:"兵庫県"},{area:"奈良県"},{area:"和歌山県"},{area:"鳥取県"},{area:"島根県"},{area:"岡山県"},{area:"広島県"},{area:"山口県"},{area:"徳島県"},{area:"香川県"},{area:"愛媛県"},{area:"高知県"},{area:"福岡県"},{area:"佐賀県"},{area:"長崎県"},{area:"熊本県"},{area:"大分県"},{area:"宮崎県"},{area:"鹿児島県"},{area:"沖縄県"},{area:"未定"}])

# DeliveryDay.create!([{day:"1~2日で発送"},{day:"2~3日で発送"},{day:"4~7日で発送"}])

# DeliveryFee.create!([{fee:"送料込み(出品者負担)"},{fee:"着払い(購入者負担)"}])

# DeliveryMethod.create!([{method:"未定"},{method:"クロネコヤマト"},{method:"ゆうパック"},{method:"ゆうメール"},{method:"らくらくメルカリ便"},{method:"レターパック"},{method:"普通郵便(定形、定形外)"},{method:"クロネコヤマト"},{method:"ゆうパック"},{method:"クリックポスト"},{method:"ゆうパケット"}])

# Brand.create!([{name:"シャネル"},{name:"ナイキ"},{name:"ルイ ヴィトン"},{name:"シュプリーム"},{name:"アディダス"}])

# Size.create!([{size:"XXS以下"},{size:"XS(SS)"},{size:"S"},{size:"M"},{size:"L"},{size:"XL(LL)"},{size:"2XL(3L)"},{size:"3XL(4L)"},{size:"4XL(5L)以上"},{size:"FREE SIZE"},{size:"60cm"},{size:"70cm"},{size:"80cm"},{size:"90cm"},{size:"95cm"},{size:"100cm"},{size:"110cm"},{size:"120cm"},{size:"130cm"},{size:"140cm"},{size:"150cm"},{size:"160cm"}])

# 10.times do |no|
#   Item.create(title:"ladysItem #{no}",user_id:"1",size_id:"1",condition_id:"1",delivery_fee_id:"1",delivery_method_id:"1",delivery_area_id:"1",delivery_day_id:"1",brand_id:"1",category_id:"1",price:"99999",text:"1",buyer_id:"1",seller_id:"1")
# end

# 500.times do |no|
#   Item.create!(title:"randomItem #{no}",user_id:"1",size_id:"#{rand(1..22)}",condition_id:"#{rand(1..6)}",delivery_fee_id:"#{rand(1..2)}",delivery_method_id:"#{rand(1..11)}",delivery_area_id:"#{rand(1..48)}",delivery_day_id:"#{rand(1..3)}",brand_id:"#{rand(1..5)}",category_id:"#{rand(1..14)}",price:"#{rand(1..1000000)}",text:"あ",buyer_id:"2",seller_id:"1")
# end

# 10.times do |no|
#   User.create!(email:"neipia_number@icloud.com #{no}", encrypted_password:"Karimen1", nickname:"太郎", last_name:"坂", first_name:"た", last_name_kana:"サカ", first_name_kana:"タ", birthdate_year:"1993", birthdate_month:"1", birthdate_day:"1", phone_number:"0901111111", postal_code:"811-1111", prefecture:"神奈川", city:"横浜", block_number:"4-1-1", building_name:"ぽぽぽ", introduce:"1", reset_password_token:"Rasasas", reset_password_sent_at:"Rasasas", address_last_name:"坂", address_first_name:"た", address_last_name_kana:"サカ", address_first_name_kana:"タ", home_phone_number:"0921111111", authentication_code:"1111")
# end

# 2000.times do |no|
#   Item.create!(title:"randomItem #{no}",user_id:"#{rand(1..2)}",size_id:"#{rand(1..22)}",condition_id:"#{rand(1..6)}",delivery_fee_id:"#{rand(1..2)}",delivery_method_id:"#{rand(1..11)}",delivery_area_id:"#{rand(1..48)}",delivery_day_id:"#{rand(1..3)}",brand_id:"#{rand(1..5)}",category_id:"#{rand(159..1330)}",price:"#{rand(1..1000000)}",seller_id:"#{rand(1..2)}")
# end

# array = ["https://i.gyazo.com/18056ee59479964b4404762cb1c407e1.jpg","https://i.gyazo.com/6a3f88d7feb72d333400807f42ca84b7.jpg","https://i.gyazo.com/d64434993d32e5521bdaeecdd51374ae.png"]
# 5000.times do |no|
#   Image.create(image:"#{array[rand(3)]}",item_id:"#{no+1}")
# end

array = ["https://i.gyazo.com/d70b9be2225c7c7d1a70edd2d62dc713.png",
  "https://picture1.goo-net.com/7009571151/30191030/J/70095711513019103000100.jpg",
  "https://img1.kakaku.k-img.com/images/productimage/fullscale/J0000028276.jpg",
  "https://item-shopping.c.yimg.jp/i/n/kagukouboukuraya_top-0002",
  "http://www.aya-koya.com/images/s/201906/CLOW03231-1.jpg",
  "https://d1uzk9o9cg136f.cloudfront.net/f/16782548/rc/2019/08/02/35e494ebf7d9a9192b7866b821119f5213fdc15f_xlarge.jpg",
  "https://images-na.ssl-images-amazon.com/images/I/41qJb2tJMIL._AC_.jpg",
  "https://images-na.ssl-images-amazon.com/images/I/31kwsNfHchL.jpg"]
2000.times do |no|
  Image.create!(image:"#{array[rand(rand(1..9))]}",item_id:"#{no + 1}")
end

# array = ["B9nQcbKkRWKoJ9Q4gUm%bQ.jpg","B9nQcbKkRWKoJ9Q4gUm%bQ.jpg","B9nQcbKkRWKoJ9Q4gUm%bQ.jpg","B9nQcbKkRWKoJ9Q4gUm%bQ.jpg","B9nQcbKkRWKoJ9Q4gUm%bQ.jpg","B9nQcbKkRWKoJ9Q4gUm%bQ.jpg","B9nQcbKkRWKoJ9Q4gUm%bQ.jpg"]
# 5000.times do |no|
#   Image.create(image:"#{array[rand(rand(1..9))]}",item_id:"#{rand(1..5000)}")
# end