class Brave
  attr_reader :name, :offense, :defense
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

  # 勇者の通常攻撃
  def attack(monster)

    attack_num = rand(4)

    if attack_num == 0 # 4分の1の確率で実行(attack_numが0のとき)
      # 必殺攻撃 1.5倍
      puts "#{@name}の必殺攻撃"
      damage = (@offense * 1.5) - (monster.defense)
      monster.hp -= damage
    else
      # 通常攻撃 (勇者の攻撃力 - モンスターの防御力)
      puts "#{@name}の通常攻撃"
      damage = @offense - monster.defense
      monster.hp -= damage
    end

    puts "#{@name}は#{monster.name}に#{damage}ダメージを与えた"
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
monster = Monster.new(name: "スライム", hp: 200, offense: 200, defense: 100)

# 勇者の攻撃
brave.attack(monster)



