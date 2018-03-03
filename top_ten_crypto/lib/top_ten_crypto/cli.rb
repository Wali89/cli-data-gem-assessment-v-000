class TopTenCrypto::CLI

  def call
    puts "Welcome to Top-Ten-Crypto!"
    puts "The Top Ten Cryptocurrencies today are:"
    list_crypto
    menu
  end

  def list_crypto
    TopTenCrypto::Coin.create
    list = TopTenCrypto::Coin.all
    list.each_with_index { |coin, i| puts "#{i+1}   #{coin.name} --- $#{coin.p_usd}"}
  end

  def goodbye
    puts "Thank you for using this application!"
  end

  def menu
    input = nil

    while input != "exit"
      crypto = TopTenCrypto::Coin.all
      puts "Please enter the list number of the cryptocurrency for more information, or exit to quit application:"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= 10
        puts "Name: #{crypto[input.to_i-1].name}"
        puts "Symbol: #{crypto[input.to_i-1].sn}"
        puts "Price USD: $#{crypto[input.to_i-1].p_usd}"
        puts "Price BTC: #{crypto[input.to_i-1].p_btc}"
        puts "Market Cap: #{crypto[input.to_i-1].market_cap}"
        puts "24 Hours Trade Volume: #{crypto[input.to_i-1].vol}"
        puts "Change over 24 Hours: #{crypto[input.to_i-1].c_day}"
        puts "Change over 7 Days: #{crypto[input.to_i-1].c_week}"
      elsif input == "list"
        list_crypto
      elsif input.to_i >= 10
        puts "Invalid input. Type list to view top ten cryptocurrencies."
      end
    end

    goodbye
  end


  def goodbye
    puts "Thank you for using this application!"
  end
end
