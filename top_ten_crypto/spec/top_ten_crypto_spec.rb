RSpec.describe TopTenCrypto do
  it "has a version number" do
<<<<<<< HEAD
    expect(TopTenCrypto::VERSION).to eq "1.0"
=======
    expect(TopTenCrypto::VERSION).to be "0.1.0"
>>>>>>> 9b6f23a64971ee751b8235c8d174d6d21049e131
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

<<<<<<< HEAD
=======
  it "is a class method that scrapes index page ('https://www.investing.com/crypto/') and returns an array" do
    scraped_info = TopTenCrypto::Best.sc
    expect(scraped_info).to be_a(Array)
  end
>>>>>>> 9b6f23a64971ee751b8235c8d174d6d21049e131
end
