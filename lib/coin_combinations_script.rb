#!/usr/bin/ruby

class Coins
  cents = Coins.new()

  def initialize(amount_int)
    @amount_int = amount_int
  end

  def quarters(amount_int)
    (amount_int / 25).floor

  end

  def dimes(amount_int)
    (amount_int / 10).floor
  end

  def nickles(amount_int)
    (amount_int / 5).floor
  end

  def count_change(amount_int)
    total_coins = amount_int

    puts "#{quarters(total_coins)} quarters"
    total_coins = total_coins - (quarters(total_coins) * 25)

    puts "#{dimes(total_coins)} dimes"
    total_coins = total_coins - (dimes(total_coins) * 10)

    puts "#{nickles(total_coins)} nickles"
    total_coins = total_coins - (nickles(total_coins) * 5)

    puts "#{total_coins} pennies"
  end

end

puts "Enter a number: "
amount = gets.chomp
amount_int = amount.to_i
change = Coins.new(amount_int)
change.count_change(amount_int)
