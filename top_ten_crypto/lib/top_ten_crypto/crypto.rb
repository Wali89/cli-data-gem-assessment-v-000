class TopTenCrypto::Best
  attr_accessor :name, :price, :url, :change

  def self.today
    coin_1 = self.new
    coin_1.name = "Bitcoin"
    coin_1.price = "$8,460.00"
    coin_1.change = "XX%"
    coin_1.url = "https://bitcoin.org/en/"

    coin_2 = self.new
    coin_2.name = "Etherium"
    coin_2.price = "$840.00"
    coin_2.change = "XX%"
    coin_2.url = "https://www.ethereum.org/"

    coin_3 = self.new
    coin_3.name = "Ripple"
    coin_3.price = "$0.77"
    coin_3.change = "XX%"
    coin_3.url = "https://ripple.com/"

    coin_4 = self.new
    coin_4.name = "Bitcoin Cash"
    coin_4.price = "$1,219.42"
    coin_4.change = "XX%"
    coin_4.url = "coinmarketcap.com"

    coin_5 = self.new
    coin_5.name = "Cardano"
    coin_5.price = "$0.389674"
    coin_5.change = "XX%"
    coin_5.url = "coinmarketcap.com"

    [coin_1, coin_2, coin_3, coin_4, coin_5]

  end

end
