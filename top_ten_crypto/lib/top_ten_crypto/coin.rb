class TopTenCrypto::Coin
  attr_accessor :name, :sn, :p_usd, :market_cap, :vol, :vol_total, :c_day, :c_week
  @@all = []


  def initialize(coin)
    info = coin.split("\n")
    info.map! { |e| e.strip }
    @name = info[2].strip
    @sn = info[3]
    @p_usd = info[4]
    @market_cap = info[5]
    @vol = info[6]
    @vol_total = info[7]
    @c_day = info[8]
    @c_week = info[9]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create
    ans = TopTenCrypto::CryptoScraper.new("https://www.investing.com/crypto/")
    coinbag = ans.scrape.drop(2)
    coinbag.each do |info|
      new_coin = self.new(info)
    end
  end
end
