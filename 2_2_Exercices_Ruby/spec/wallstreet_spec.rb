# frozen_string_literal: true

require_relative '../lib/wallstreet.rb'

describe 'the best_day_to_buy method' do
  it 'should return the best day to buy with the lowest price' do
    expect(jean_michel_trader([17, 3, 6, 9, 15, 6, 1])).to eq([3, 15])
    expect(jean_michel_trader([390,200,3200,1320,100,3400,100,490])).to eq([100, 3400])
  end
end

describe 'the winning speaker method' do
  it 'should return the result of the trade in $' do
    expect(how_much_i_won([17, 3, 6, 9, 15, 6, 1])).to eq('You won $12 !')
    expect(how_much_i_won([390, 200, 3200, 1320, 100, 3400, 100, 490])).to eq('You won $3300 !')
  end
end
