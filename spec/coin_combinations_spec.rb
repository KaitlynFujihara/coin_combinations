require('rspec')
require('coin_combinations')
require('pry')

describe('#coin_combinations') do
  it('returns the number of quarters') do
  expect(cents = Coins.new(50).quarters / 25).to(eq(2))
  end

  it('returns the number of dime') do
  expect(cents = Coins.new(50).dimes / 10).to(eq(5))
  end

  it('returns the number of nickles') do
  expect(cents = Coins.new(50).nickles / 5).to(eq(10))
  end

  it('returns the number of pennies') do
  expect(cents = Coins.new(50).pennies).to(eq(50))
  end

end
