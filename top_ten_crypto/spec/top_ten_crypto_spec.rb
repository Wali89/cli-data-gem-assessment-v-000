RSpec.describe TopTenCrypto do
  it "has a version number" do
    expect(TopTenCrypto::VERSION).to eq "1.0"
  end


  it "#sc a class method that scrapes index page ('https://www.investing.com/crypto/') and returns an array" do
    scraped_info = TopTenCrypto::Best.sc
    expect(scraped_info).to be_a(Array)
  end

  it "#mc returns objects from array" do
    scraped_info = TopTenCrypto::Best.sc
    TopTenCrypto::Best.mc(scraped_info)
    expect(TopTenCrypto::Best.all).to be_a(Array)
  end

end
