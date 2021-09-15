class Brave
  # attr_reader ゲッターを省略することができる
  attr_reader :name, :offense, :defense

  # ゲッターとセッターを同時に定義できる
  attr_accessor :hp

  # paramsで一括で受け取る
  # 引数に**を記述：ハッシュしか受け取れなくなる
  def initialize(params)
    puts params
    #=> {:name=>"テリー", :hp=>500, :offense=>150, :defense=>100}

    # 各パラメータをハッシュで取得
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end

# キーワード引数で、initializeメソッドの引数がどのパラメータに渡しているのかわかりやすくする
brave = Brave.new(name: 'テリー', hp: 500, offense: 150, defense: 100)

# ヒアドキュメント putsや文字列を囲む""（ダブルクウォーテーション）を何度も書く必要がなくなる
puts <<~TEXT
NAME:#{brave.name}
HP:#{brave.hp}
OFFENSE:#{brave.offense}
DEFENSE:#{brave.defense}
TEXT

brave.hp-=30

puts "#{brave.name}の残りhpは#{brave.hp}です"
