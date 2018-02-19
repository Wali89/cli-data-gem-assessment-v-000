class TopTenCrypto::CryptoScraper
  attr_accessor :rawinfo, :doc

  def initialize(website)
    @rawinfo = []
    @doc = Nokogiri::HTML(open("#{website}"))
  end

  def scrape
    @doc.search("tr").each do |info|
      a = info.text
      @rawinfo << a
    end
    @rawinfo
  end

end
