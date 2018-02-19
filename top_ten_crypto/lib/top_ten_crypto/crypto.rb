
class Best
 attr_accessor :all, :coinbag

 def initialize
   ans = CryptoScraper.new("https://www.investing.com/crypto/")
   coinbag = ans.scrape.drop(2)
   coinbag.each do |info|
     new_coin = Coin.new(info)
     binding.pry
   end
 end

end
