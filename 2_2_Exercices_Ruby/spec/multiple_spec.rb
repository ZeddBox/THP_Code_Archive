require_relative '../lib/multiple.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(multiple_of_3_or_5?(3)).to eq(true)
    expect(multiple_of_3_or_5?(5)).to eq(true)
    expect(multiple_of_3_or_5?(51)).to eq(true)
    expect(multiple_of_3_or_5?(45)).to eq(true)
  end
  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(multiple_of_3_or_5?(2)).to eq(false)
    expect(multiple_of_3_or_5?(7)).to eq(false)
    expect(multiple_of_3_or_5?(64)).to eq(false)
  end
end

describe "the sum_of_3_or_5_number method" do
  it "should do sum of the numbers that are multiple of 3 or 5 to a specific number" do
    expect(sum_of_3_or_5_number(10)).to eq(23)
    expect(sum_of_3_or_5_number(11)).to eq(33)
    expect(sum_of_3_or_5_number(0)).to eq(0)
    expect(sum_of_3_or_5_number(3)).to eq(0)
  end
  it "should return an error when the specific number is invalid (float, negative or string)" do
    expect(sum_of_3_or_5_number(-1)).to eq("Hey il faut un entier naturel bitch")
    expect(sum_of_3_or_5_number(1.23)).to eq("Hey il faut un entier naturel bitch")
    expect(sum_of_3_or_5_number("chiffre")).to eq("Hey il faut un entier naturel bitch")
  end
end