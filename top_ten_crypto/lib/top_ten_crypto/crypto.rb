
<<<<<<< HEAD
class Best
 attr_accessor :all, :coinbag

 def initialize
   ans = CryptoScraper.new("https://www.investing.com/crypto/")
   coinbag = ans.scrape.drop(2)
   coinbag.each do |info|
     new_coin = Coin.new(info)
     binding.pry
=======
class TopTenCrypto::Best
 attr_accessor :all, :coinbag

 def initialize
   wali = CryptoScraper.new("https://www.investing.com/crypto/")
   @coinbag = wali.scrape
   binding.pry
   @coinbag.shift
   counter = 1
   @coinbag.each do |coin|
     info = coin.split("\n")
     info.map! { |e| e.strip }
     coin = Coin.new
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
>>>>>>> 8f541ac2039fb50188c822c18aad25eb0f7ce0e0
   end
 end

end
