require_relative '../lib/02_mes_deputes'

describe "scrap the mail of 1 depute method" do
  it "should not be nil or false" do
    expect(get_depute_email("https://www.nosdeputes.fr/damien-abad")).to be
  end

  it "should be a string" do
    expect(get_depute_email("https://www.nosdeputes.fr/damien-abad")).to be_a(String)
  end

  it "should have an @ in it" do
    expect(get_depute_email("https://www.nosdeputes.fr/damien-abad")).to include("@")
  end
end

describe "scrap all the URLs of deputes method" do
  it "should not be nil or false" do
    expect(get_deputes_urls).to be
  end

  it "should return an Array" do
    expect(get_deputes_urls).to be_a(Array)
  end
end

describe "scrap all the firstnames of deputes method" do
  it "should not be nil or false" do
    expect(get_deputes_firstnames).to be
  end

  it "should return an Array" do
    expect(get_deputes_firstnames).to be_a(Array)
  end
end

describe "scrap all the names of deputes method" do
  it "should not be nil or false" do
    expect(get_deputes_names).to be
  end

  it "should return an Array" do
    expect(get_deputes_names).to be_a(Array)
  end
end

describe "create a array of hashes with [{firstnames => firstnames, names => names, mails => mails}, {}, {}..] method" do
  it "should not be nil or false" do
    expect(putinhash).to be
  end

  it "should return an Array" do
    expect(putinhash).to be_a(Array)
  end
end