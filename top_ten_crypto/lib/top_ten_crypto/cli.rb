class TopTenCrypto::CLI


  def call
    wali = Best.new
    puts "Welcome to Top-Ten-Crypto!"
    puts "The Top Ten Cryptocurrencies today are:"
    list_crypto
    menu
  end

  def list_crypto
    list = wali.all
    puts "#{list[0].rank}    #{list[0].name}----$#{list[0].p_usd}"
    puts "#{list[1].rank}    #{list[1].name}----$#{list[1].p_usd}"
    puts "#{list[2].rank}    #{list[2].name}----$#{list[2].p_usd}"
    puts "#{list[3].rank}    #{list[3].name}----$#{list[3].p_usd}"
    puts "#{list[4].rank}    #{list[4].name}----$#{list[4].p_usd}"
    puts "#{list[5].rank}    #{list[5].name}----$#{list[5].p_usd}"
    puts "#{list[6].rank}    #{list[6].name}----$#{list[6].p_usd}"
    puts "#{list[7].rank}    #{list[7].name}----$#{list[7].p_usd}"
    puts "#{list[8].rank}    #{list[8].name}----$#{list[8].p_usd}"
    puts "#{list[9].rank}   #{list[9].name}----$#{list[9].p_usd}"
  end

  def goodbye
    puts "Thank you for using this application!"
  end

  def menu
    input = nil

    while input != "exit"
      crypto = Crypto.all
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
