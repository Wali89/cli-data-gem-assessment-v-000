class TopTenCrypto::Best
  attr_accessor :name, :sn, :p_usd, :market_cap, :vol, :vol_total, :p_btc, :c_day, :rank, :c_week

  @@all = []
  @@coinbag = []

  def initialize

  end

  #Scrapes Chart
  def self.sc
    doc = Nokogiri::HTML(open("https://www.investing.com/crypto/"))
    chart = doc.search("tbody")
    chart.search("tr").each do |info|
      @@coinbag << info.text
    end
  end

  #Makes Coins
  def self.mc
    @@coinbag.shift
    counter = 1
    @@coinbag.each do |coin|
      info = coin.split("\n")
      info.map! { |e| e.strip }
      coin = self.new
      coin.name = info[2].strip
      coin.sn = info[3]
      coin.p_usd = info[4]
      coin.market_cap = info[5]
      coin.vol = info[6]
      coin.vol_total = info[7]
      coin.p_btc = info[8]
      coin.c_day = info[9]
      coin.c_week = info[10]
      coin.rank = counter.to_i
      counter += 1
      @@all << coin

  def self.m_c
    @@coinbag.shift
    @@coinbag.each do |coin|
      counter = 1
      info = coin.split(" ")
      coin = self.new
      coin.name = info[0]
      coin.sn = info[1]
      coin.p_usd = info[2]
      coin.market_cap = info[3]
      coin.vol = info[4]
      coin.vol_total = info[5]
      coin.p_btc = info[6]
      coin.c_day = info[7]
      coin.c_week = info[8]
      coin.rank = counter.to_i
      @@all << coin
      counter += 1
    end
  end

  def self.all
    @@all
  end

  def self.bag
    @@coinbag
  end

  def self.bag
    @@coinbag
  end

end
