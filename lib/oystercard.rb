class Oystercard
  attr_reader :balance, :in_journey

  MAXIMUM_BALANCE = 90

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(num)
    fail "Balance cannot exceed £#{MAXIMUM_BALANCE}" if @balance + num > MAXIMUM_BALANCE
    @balance += num
  end

  def deduct(num)
    @balance -= num
  end

  def touch_in
    @in_journey = true
  end 

  def touch_out
    @in_journey = false
  end
end