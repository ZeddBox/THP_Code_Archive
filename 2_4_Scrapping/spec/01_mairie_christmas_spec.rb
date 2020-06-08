require_relative '../lib/01_mairie_christmas.rb'

describe "scrap the mail of 1 mairie method" do
  it "should not be nil or false" do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/ableiges.html")).to be
  end

  it "should be a string" do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/ableiges.html")).to be_a(String)
  end

  it "should have an @ in it" do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/ableiges.html")).to include("@")
  end
end

describe "scrap all the URLs of mairies method" do
  it "should not be nil or false" do
    expect(get_townhall_urls).to be
  end

  it "should return an Array" do
    expect(get_townhall_urls).to be_a(Array)
  end
end

describe "scrap all the names of mairies method" do
  it "should not be nil or false" do
    expect(get_townhall_name).to be
  end

  it "should return an Array" do
    expect(get_townhall_name).to be_a(Array)
  end
end

describe "create a array of hashes with [{names => mail}, ..] method" do
  it "should not be nil or false" do
    expect(putinhash).to be
  end

  it "should return an Array" do
    expect(putinhash).to be_a(Array)
  end
end