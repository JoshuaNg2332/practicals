class PiggyBank
  attr_reader :coins

  def initialize
    @coins = 0
  end

  def add_coins(amount)
    @coins += amount
  end

  def shake
    "cling" if @coins > 0
  end

  def break
    "returns #{@coins} #{@coins == 1 ? "coin" : "coins"}"
  end
end