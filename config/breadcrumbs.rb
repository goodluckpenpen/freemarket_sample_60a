# crumb :root do
#   link "Home", root_path
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).

# 残りのパンくず
# ヘッダーの下に貼り付ける
# お知らせ
# .signups-body
#   - breadcrumb :notice
#   =render 'categories/bread'

# やること
# .signups-body
#   - breadcrumb :todo
#   =render 'categories/bread'

# いいね
# .signups-body
#   - breadcrumb :like
#   =render 'categories/bread'

# 購入した商品の取引中
# .signups-body
#   - breadcrumb :buy_exhibit
#   =render 'categories/bread'

# 購入した商品の過去取引
# .signups-body
#   - breadcrumb :transaction
#   =render 'categories/bread'

# ニュース
# .signups-body
#   - breadcrumb :news
#   =render 'categories/bread'

# 評価
# .signups-body
#   - breadcrumb :review
#   =render 'categories/bread'

# ガイド
# .signups-body
#   - breadcrumb :guide
#   =render 'categories/bread'

# お問い合わせ
# .signups-body
#   - breadcrumb :infomation
#   =render 'categories/bread'

# 売上、申請
# .signups-body
#   - breadcrumb :sale
#   =render 'categories/bread'

# ポイント
# .signups-body
#   - breadcrumb :point
#   =render 'categories/bread'

# 住所変更
# .signups-body
#   - breadcrumb :area
#   =render 'categories/bread'

# メールパスワード
# .signups-body
#   - breadcrumb :mail
#   =render 'categories/bread'

# 電話番号
# .signups-body
#   - breadcrumb :tell
#   =render 'categories/bread'




# user
crumb :root do
  link "メルカリ", root_path
end

crumb :mypage do
  link "マイページ", mypage_users_path
end

crumb :profile do
  link "プロフィール"
  parent :mypage
end

crumb :notice do
  link "お知らせ"  
parent :mypage
end

crumb :todo do
  link "やることリスト"  
parent :mypage
end

crumb :like do
  link "いいね！一覧"  
parent :mypage
end

crumb :exhibiting do
  link "出品した商品 - 出品中"  
parent :mypage
end

crumb :trading do
  link "出品した商品 - 取引中"  
parent :mypage
end

crumb :sold do
  link "出品した商品 - 売却済み"  
parent :mypage
end

crumb :buy_exhibit do
  link "購入した商品 - 取引中"  
parent :mypage
end

crumb :transaction do
  link "購入した商品 - 過去の取引"  
parent :mypage
end

crumb :news do
  link "ニュース一覧"  
parent :mypage
end

crumb :review do
  link "評価一覧"  
parent :mypage
end

crumb :guide do
  link "ガイド"  
parent :mypage
end

crumb :infomation do
  link "お問い合わせ"  
parent :mypage
end

crumb :sale do
  link "売上・振込申請"  
parent :mypage
end

crumb :point do
  link "ポイント"  
parent :mypage
end

crumb :area do
  link "発送元・お届け先住所変更"  
parent :mypage
end

crumb :payment do
  link "支払い方法"  
parent :mypage
end

crumb :mail do
  link "メール/パスワード"  
parent :mypage
end

crumb :identification do
  link "本人情報"  
parent :mypage
end

crumb :tell do
  link "電話番号の確認"  
parent :mypage
end

crumb :logout do
  link "ログアウト"  
parent :mypage
end



# category
crumb :root do
  link "メルカリ", root_path
end

crumb :categories do 
  link "カテゴリー一覧", categories_path
end

crumb :category do |category|
  @category = Category.find(params[:id])
  link @category.name, category_path(category)
  parent :categories
end

crumb :category1 do |category|
  @category1 = Category.find(params[:id])
  link @category1.name, category_path(category)
  parent :category
end
   
crumb :category2 do |category2|
  @category2 = Category.find(params[:id])
  link @category2.name
  parent :category1
end
