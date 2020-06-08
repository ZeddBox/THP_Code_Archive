require_relative '../lib/00_scraper.rb'

describe "the scraping symbol method" do

  it "should not be empty or nil" do
    expect(symbol_in_array($page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div'))).to be
  end

  it "should be an array" do
    expect(symbol_in_array($page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div'))).to be_a(Array)
  end
end

describe "the scraping prices method" do

  it "should not be empty or nil" do
    expect(symbol_in_array($page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a'))).to be
  end

  it "should be an array" do
    expect(symbol_in_array($page.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a'))).to be_a(Array)
  end
end