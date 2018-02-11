class TopTenCrypto::Best
  attr_accessor :name, :price, :url, :change
  @@all = []

  def self.scrape_chart
    doc = Nokogiri::HTML(open("https://coinmarketcap.com/"))
    chart = doc.search("tbody")
    coin_bag = []
    chart.search("tr").each do |coin_info|
      coin_bag << coin_info
    end

    coin_bag.each do |info|
      coin = TopTenCrypto::Best.new
      #data = info.search('td')
      #does work
      coin.name = info.css("a.currency-name-container").text
      coin.price = info.css("a.price").text

      @@all << coin
      binding.pry
    end

  end

end
