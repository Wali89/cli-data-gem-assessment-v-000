class TopTenCrypto::CLI

  def call
    puts "Welcome "
    puts "The Top Ten Cryptocurrencies:"
    list_crypto
    menu
  end

  def list_crypto
    @cryptos = TopTenCrypto::Best.scrape_chart
    @cryptos.each_with_index { |crypto, i| puts "#{i+1}. #{crypto.name}" }
  end

  def goodbye
    puts "Thank you for using this application!"
  end

  def menu
    input = nil

    while input != "exit"
      puts "Please enter the list number of the cryptocurrency for more information, or exit to quit application:"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= 5
        puts "Name: #{@cryptos[input.to_i-1].name}"
        puts "Price: #{@cryptos[input.to_i-1].price}"
        puts "Website: #{@cryptos[input.to_i-1].url}"
      elsif input == "list"
        list_crypto
      elsif input.to_i >= 6
        puts "Invalid input."
      end
    end

    goodbye
  end


  def goodbye
    puts "Thank you for using this application!"
  end
end
