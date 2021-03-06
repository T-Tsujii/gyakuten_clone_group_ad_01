# テストユーザー情報
EMAIL = "test@example.com".freeze
PASSWORD = "password".freeze
NICKNAME = "nickname".freeze
ADMIN = true
USERFLAG = true

# データの入力範囲
START_DATE = Time.zone.today - 11.months
END_DATE = Time.zone.today + 1.month

# 1/(NO_RECORD_CONSTANT) の確率でデータを記録しない
# （記録が一部欠けていてもグラフが正常に描けるかをチェックするため）
NO_RECORD_CONSTANT = 5

# 記録する体温の範囲（乱数で値を決める都合上，10倍しておく）
MIN_TEMP = 360
MAX_TEMP = 385

# 記録する体重の範囲（乱数で値を決める都合上，10倍しておく）
MIN_WEIGHT = 600
MAX_WEIGHT = 620
DIV_CONSTANT = 10

# 記録する症状の範囲
SYMP_LIST = ["○調子が良い", "○元気", "○だるさ", "○眠気", "○イライラ", "○憂うつ", "○下腹部痛", "○腰痛", "○不安", "◉熱", "◉便秘"].freeze

# 記録するその他の文字列
OTHER = "テスト".freeze

user = User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  user.nickname = NICKNAME
  user.admin = ADMIN
  user.user_flag = USERFLAG
  puts "テストユーザーの初期データインポートに成功しました。"
end

user.graphs.destroy_all

graphs = []
(START_DATE..END_DATE).each.with_index(1) do |date, i|
  # 1/(NO_RECORD_CONSTANT) の確率でデータを入れる操作をスキップ
  next if rand(NO_RECORD_CONSTANT).zero?

  graphs << {
    user_id: user.id,
    date: date,
    # to_f を入れておかないと整数になるので注意！
    temperature: rand(MIN_TEMP..MAX_TEMP).to_f / DIV_CONSTANT,
    weight: rand(MIN_WEIGHT..MAX_WEIGHT).to_f / DIV_CONSTANT,
    symptom: SYMP_LIST.sample,
    other: OTHER + i.to_s
  }
end
Graph.create!(graphs)
puts "体調管理の初期データ投入に成功しました！"
