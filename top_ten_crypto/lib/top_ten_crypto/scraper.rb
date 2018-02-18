class CryptoScraper
  attr_accessor :rawinfo, :coinbag, :doc

  def initialize(website)
    @coinbag = []
    @rawinfo = []
    @doc = Nokogiri::HTML(open("#{website}"))
    @list = TopTenCrypto::Best.new
  end

  def scrape
    s_rawinfo
  end


  def s_rawinfo
    @doc.search("tr").each do |info|
      a = info.text
      @rawinfo << a
    end
  end

  def doc
    @doc
  end
end
