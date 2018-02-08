class TopTenCrypto::CLI

  def call
    puts "The Top Ten Cryptocurrencies:"
    list_crypto
    menu
    goodbye
  end

  def list_crypto
    puts <<-DOC.gsub /^\s*/, ''
    1. BTC
    2. ETH
    3. XRP
    4. BCC
    5. ADA
    6. LTC
    7. NEO
    8. XLM
    9. EOS
    10. NEM
    DOC
  end

  def menu
    puts "Enter the number of the cryptocurrency for more information:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on crypto 1..."
      when "2"
        puts "More info on crypto 2..."
      when "3"
        puts "More info on crypto 3..."
      when "4"
        puts "More info on crypto 4..."
      when "5"
        puts "More info on crypto 5..."
      when "6"
        puts "More info on crypto 6..."
      when "7"
        puts "More info on crypto 7..."
      when "8"
        puts "More info on crypto 8..."
      when "9"
        puts "More info on crypto 9..."
      when "10"
        puts "More info on crypto 10..."
      when "list"
        list_crypto
      end
    end
  end

  def goodbye
    puts "See you later!"
  end
end
