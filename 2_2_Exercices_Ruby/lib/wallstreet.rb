# frozen_string_literal: true

def jean_michel_trader(array)
  prices = array.sort
  best_price = []
  j = -1
  j -= 1 if array.index(prices[j]) == 0
  while array.index(prices[0]) > array.index(prices[j])
    prices.delete_at(0)
  end
    best_price << prices[0]
    best_price << prices[j]
    return best_price
end

def how_much_i_won(array)
  result = jean_michel_trader(array)
  won = result[1] - result[0]
  return "You won $#{won} !"
end

