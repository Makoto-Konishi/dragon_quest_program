class Brave
  # attr_reader ゲッターを省略することができる
  attr_reader :name, :offense, :defense

  # ゲッターとセッターを同時に定義できる
  attr_accessor :hp

  # paramsで一括で受け取る
  # 引数に**を記述：ハッシュしか受け取れなくなる
  def initialize(**params)
    # 各パラメータをハッシュで取得
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  # 引数で攻撃対象のインスタンスを受け取る
  def attack(monster)
    # 攻撃者の名前
    puts "#{@name}の攻撃"

    # ダメージ計算(勇者の攻撃力 - モンスターの防御力)
    damage = @offense - monster.defense
    puts "#{@name}は#{monster.name}に#{damage}ダメージを与えた"

    # 攻撃対象から計算したダメージを引く
    monster.hp -= damage
    puts "#{monster.name}の残りHPは#{monster.hp}だ"
  end
end

class Monster
  attr_reader :name,:offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end

# キーワード引数で、initializeメソッドの引数がどのパラメータに渡しているのかわかりやすくする
brave = Brave.new(name: 'テリー', hp: 500, offense: 150, defense: 100)
monster = Monster.new(name: "スライム", hp: 250, offense: 200, defense: 100)

# 勇者の攻撃
brave.attack(monster)



