class TopTenCrypto::Best

  attr_accessor :name, :price, :change, :rank, :sn, :market_cap, :vol, :cs, :coinbag
  attr_reader :chart
  @@all = []
  @@coinbag = []

  def initialize
  end

  #Scrapes Chart
  def self.s_c
    doc = Nokogiri::HTML(open("https://coinmarketcap.com/"))
    @@chart = doc.search("tbody")
  end

  def self.t_t
    counter = 0
    @@chart.search("tr").each do |info|
      @@coinbag << info.text
      counter += 1
    end
  end

  def self.m_c
  end
end
