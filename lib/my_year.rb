class MyYear

  def initialize(year)
    @year = year
  end

  def leap?
    return false if @year.nil?
    return false if divisible_by_100? && !divisible_by_400?
    divisible_by_4?
  end

private

  def divisible_by_4?
    @year % 4 == 0
  end

  def divisible_by_100?
    @year % 100 == 0
  end

  def divisible_by_400?
    @year % 400 == 0
  end
end
