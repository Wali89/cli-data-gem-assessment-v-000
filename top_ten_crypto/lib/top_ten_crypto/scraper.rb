class CryptoScraper
  attr_accessor :rawinfo, :coinbag, :doc

  def initialize(website)
    @coinbag = []
    @rawinfo = []
    @doc = Nokogiri::HTML(open("#{website}"))
  end

  def scrape
    @doc.search("tr").each do |info|
      a = info.text
      @rawinfo << a
    end
  end

end
