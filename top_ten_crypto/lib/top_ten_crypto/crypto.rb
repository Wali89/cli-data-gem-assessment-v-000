class TopTenCrypto::Best
  attr_accessor :name, :price, :url

  def self.today
    puts <<-DOC.gsub /^\s*/, ''
    1. BTC
    2. ETH
    3. XRP
    4. BCC
    5. ADA
    6. LTC
    7. NEO
    8. XLM
    9. EOS
    10. NEM
    DOC

    coin_1 = self.new
    coin_1.name = "Bitcoin"
    coin_1.price = "$8,460.00"
    coin_1.url = "https://bitcoin.org/en/"

    coin_2 = self.new
    coin_2.name = "Etherium"
    coin_2.price = "$840.00"
    coin_2.url = "https://www.ethereum.org/"

    coin_3 = self.new
    coin_3.name = "Ripple"
    coin_3.price = "$0.77"
    coin_3.url = "https://ripple.com/"

    coin_4 = self.new
    coin_4.name = "xx"
    coin_4.price = "$xx"
    coin_4.url = "xx"

    coin_5 = self.new
    coin_5.name = "xx"
    coin_5.price = "$xx"
    coin_5.url = "xx"

    coin_6 = self.new
    coin_6.name = "xx"
    coin_6.price = "$xx"
    coin_6.url = "xx"

    coin_7 = self.new
    coin_7.name = "xx"
    coin_7.price = "$xx"
    coin_7.url = "xx"

    coin_8 = self.new
    coin_8.name = "xx"
    coin_8.price = "$xx"
    coin_8.url = "xx"

    coin_9 = self.new
    coin_9.name = "xx"
    coin_9.price = "$xx"
    coin_9.url = "xx"

    coin_10 = self.new
    coin_10.name = "xx"
    coin_10.price = "$xx"
    coin_10.url = "xx"

    [coin_1, coin_2, coin_3, coin_4, coin_5, coin_6, coin_7, coin_8, coin_9, coin_10]
  end

end
