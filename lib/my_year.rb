class MyYear

  def initialize(year)
    @year = year
  end

  def leap?
    return false if @year.nil?
    return false if divisible_by?(100) && !divisible_by?(400)
    divisible_by?(4)
  end

private

  def divisible_by?(num)
    @year % num == 0
  end
end
