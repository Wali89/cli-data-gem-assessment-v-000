class TopTenCrypto::Best
 attr_accessor :name, :sn, :p_usd, :market_cap, :vol, :vol_total, :p_btc, :c_day, :rank, :c_week

 @@all = []

 def initialize

 end




 #Makes Coins
 def self.mc(coinbag)
   coinbag.shift
   counter = 1
   coinbag.each do |coin|
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
   end
 end

 def self.all
   @@all
 end


end
