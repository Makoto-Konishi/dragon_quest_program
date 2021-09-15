class Brave

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

  # nameのゲッター
  def name
    @name
  end
  # nameのセッター
  def name=(name)
    @name = name
  end

  # hpのゲッター
  def hp
    @hp
  end
  # hpのセッター
  def hp=(hp)
    @hp = hp
  end

  # offenseのゲッター
  def offense
    @offense
  end
  # offenseのセッター
  def offense=(offense)
    @offense = offense
  end

  # defenseのゲッター
  def defense
    @defense
  end
  # defenseのセッター
  def defense=(defense)
    @defense = defense
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
