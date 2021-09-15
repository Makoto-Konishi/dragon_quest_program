class Brave

  # initializeメソッドを定義
  def initialize
    @name = "テリー"
    @hp = 500
    @offense = 150
    @defense = 100
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

brave = Brave.new

# ヒアドキュメント putsや文字列を囲む""（ダブルクウォーテーション）を何度も書く必要がなくなる
puts <<~TEXT
NAME:#{brave.name}
HP:#{brave.hp}
OFFENSE:#{brave.offense}
DEFENSE:#{brave.defense}
TEXT