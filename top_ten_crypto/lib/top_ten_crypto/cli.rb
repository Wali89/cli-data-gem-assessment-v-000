class TopTenCrypto::CLI

  def call
    puts "The Top Ten Cryptocurrencies:"
    list_crypto
    menu
  end

  def list_crypto
    puts "The Top Ten Cryptocurrencies:"
    @cryptos = TopTenCrypto::Best.today
    @cryptos.each.with_index(1) do |crypto, i|
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please enter the list number of the cryptocurrency for more information, or exit to quit application:"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i < 5
        puts @cryptos[input.to_i-1].name
        puts "Price: #{@cryptos[input.to_i-1].price}"
        puts @cryptos[input.to_i-1].url
      elsif input == "list"
        list_crypto
      elsif input.to_i > 5
        puts "Invalid input."
      else
        goodbye
      end
    end
  end
end

  def goodbye
    puts "Thank you for using this application!"
  end
end
