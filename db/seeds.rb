# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# lady = Category.create(:name=>"レディース")
# men = Category.create(:name=>"メンズ")
# baby = Category.create(:name=>"ベビー・キッズ")
# interior = Category.create(:name=>"インテリア・住まい・小物")
# book = Category.create(:name=>"本・音楽・ゲーム")
# toy = Category.create(:name=>"おもちゃ・ホビー・グッズ")
# cosmetics = Category.create(:name=>"コスメ・香水・美容")
# appliances= Category.create(:name=>"家電・スマホ・カメラ")
# sports = Category.create(:name=>"スポーツ・レジャー")
# handmade = Category.create(:name=>"ハンドメイド")
# ticket = Category.create(:name=>"チケット")
# car = Category.create(:name=>"自動車・オートバイ")
# other = Category.create(:name=>"その他")

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
# lady_small = lady.children.create(:name=>"小物")
# lady_watch = lady.children.create(:name=>"時計")
# lady_wig = lady.children.create(:name=>"ウィッグ/エクステ")
# lady_yukata = lady.children.create(:name=>"浴衣/水着")
# lady_suit = lady.children.create(:name=>"スーツ/フォーマル/ドレス")
# lady_matarnity = lady.children.create(:name=>"マタニティ")
# lady_other = lady.children.create(:name=>"その他")

# lady_tops.children.create([{name:"Tシャツ/カットソー(半袖/袖なし)"}, {name:"Tシャツ/カットソー(七分/長袖)"},{name:"シャツ/ブラウス（半袖/袖なし）"},{name:"シャツ/ブラウス（七分/長袖）"},{name:"ポロシャツ"},{name:"キャミソール"},{name:"タンクトップ"},{name:"ホルターネック"},{name:"ニット/セーター"},{name:"チュニック"},{name:"カーディガン/ボレロ"},{name:"アンサンブル"},{name:"ベスト/ジレ"},{name:"パーカー"},{name:"トレーナー/スウェット"},{name:"ペアトップ/チューブトップ"},{name:"ジャージ"},{name:"その他"}])

# Condition.create!([{condition:"新品、未使用"},{condition:"未使用に近い"},{condition:"目立った傷汚れなし"},{condition:"やや傷や汚れあり"},{condition:"傷や汚れあり"},{condition:"全体的に状態が悪い"}])

# DeliveryArea.create!([{area:"北海道"},{area:"青森県"},{area:"岩手県"},{area:"宮城県"},{area:"秋田県"},{area:"山梨県"},{area:"福島県"},{area:"茨城県"},{area:"栃木県"},{area:"群馬県"},{area:"埼玉県"},{area:"千葉県"},{area:"東京都"},{area:"神奈川県"},{area:"新潟県"},{area:"富山県"},{area:"石川県"},{area:"福井県"},{area:"山梨県"},{area:"長野県"},{area:"岐阜県"},{area:"静岡県"},{area:"愛知県"},{area:"三重県"},{area:"滋賀県"},{area:"京都府"},{area:"大阪府"},{area:"兵庫県"},{area:"奈良県"},{area:"和歌山県"},{area:"鳥取県"},{area:"島根県"},{area:"岡山県"},{area:"広島県"},{area:"山口県"},{area:"徳島県"},{area:"香川県"},{area:"愛媛県"},{area:"高知県"},{area:"福岡県"},{area:"佐賀県"},{area:"長崎県"},{area:"熊本県"},{area:"大分県"},{area:"宮崎県"},{area:"鹿児島県"},{area:"沖縄県"},{area:"未定"}])

# DeliveryDay.create!([{day:"1~2日で発送"},{day:"2~3日で発送"},{day:"4~7日で発送"}])

# DeliveryFee.create!([{fee:"送料込み(出品者負担)"},{fee:"着払い(購入者負担)"}])

# DeliveryMethod.create!([{method:"未定"},{method:"クロネコヤマト"},{method:"ゆうパック"},{method:"ゆうメール"},{method:"らくらくメルカリ便"},{method:"レターパック"},{method:"普通郵便(定形、定形外)"},{method:"クロネコヤマト"},{method:"ゆうパック"},{method:"クリックポスト"},{method:"ゆうパケット"}])

# Brand.create!([{name:"シャネル"},{name:"ナイキ"},{name:"ルイ ヴィトン"},{name:"シュプリーム"},{name:"アディダス"}])

# Size.create!([{size:"XXS以下"},{size:"XS(SS)"},{size:"S"},{size:"M"},{size:"L"},{size:"XL(LL)"},{size:"2XL(3L)"},{size:"3XL(4L)"},{size:"4XL(5L)以上"},{size:"FREE SIZE"},{size:"60cm"},{size:"70cm"},{size:"80cm"},{size:"90cm"},{size:"95cm"},{size:"100cm"},{size:"110cm"},{size:"120cm"},{size:"130cm"},{size:"140cm"},{size:"150cm"},{size:"160cm"}])

# 10.times do |no|
#   Item.create(title:"ladysItem #{no}",user_id:"1",size_id:"1",condition_id:"1",delivery_fee_id:"1",delivery_method_id:"1",delivery_area_id:"1",delivery_day_id:"1",brand_id:"1",category_id:"1",price:"99999")
# end

200.times do |no|
  Item.create(title:"randomItem #{no}",user_id:"1",size_id:"#{rand(1..22)}",condition_id:"#{rand(1..6)}",delivery_fee_id:"#{rand(1..2)}",delivery_method_id:"#{rand(1..11)}",delivery_area_id:"#{rand(1..48)}",delivery_day_id:"#{rand(1..3)}",brand_id:"#{rand(1..5)}",category_id:"#{rand(1..14)}",price:"#{rand(1..1000000)}")
end