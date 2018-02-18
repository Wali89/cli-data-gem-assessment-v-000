class TopTenCrypto::Scraper

  #Scrapes Chart
  def self.sc
    coinbag = []
    doc = Nokogiri::HTML(open("https://www.investing.com/crypto/"))
    chart = doc.search("tbody")
    chart.search("tr").each do |info|
     coinbag << info.text
    end
    coinbag
  end

end
