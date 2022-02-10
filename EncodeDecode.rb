encoder_alphabet = {}
encoder_alphabet["a"] = "z"
encoder_alphabet["b"] = "y" 
encoder_alphabet["c"] = "x" 
encoder_alphabet["d"] = "w" 
encoder_alphabet["e"] = "v" 
encoder_alphabet["f"] = "u" 
encoder_alphabet["g"] = "t" 
encoder_alphabet["h"] = "s" 
encoder_alphabet["i"] = "r" 
encoder_alphabet["j"] = "q" 
encoder_alphabet["k"] = "p" 
encoder_alphabet["l"] = "o" 
encoder_alphabet["m"] = "n" 
encoder_alphabet["n"] = "m" 
encoder_alphabet["o"] = "l" 
encoder_alphabet["p"] = "k" 
encoder_alphabet["q"] = "j" 
encoder_alphabet["r"] = "i" 
encoder_alphabet["s"] = "h" 
encoder_alphabet["t"] = "g" 
encoder_alphabet["u"] = "f" 
encoder_alphabet["v"] = "e" 
encoder_alphabet["w"] = "d" 
encoder_alphabet["x"] = "c" 
encoder_alphabet["y"] = "b" 
encoder_alphabet["z"] = "a"
encoder_alphabet[" "] = " "

encoded_message = ""

#message encode/message decode
def encode message, encoder_alphabet
    encoded_message = ""
    message.split('').each do |x|
    encoded_message = encoded_message + "#{encoder_alphabet[x]}"
    end

return encoded_message
    
end

def decode message
   return "I have no idea what the message was, sorry"
end

answer=""

while answer != "x"
puts "Do you want to 1) encode a message, b) decode a message, or x) exit?"
answer = gets.chomp.downcase


if(answer == "1")
    puts "What do you want to encode?"
    message = gets.chomp.downcase
    secret_message = encode(message, encoder_alphabet)
    puts "Your secret message is: #{secret_message}"
elsif(answer == "b")
    puts "What do you want to decode?"
    message = gets.chomp.downcase
    unsecret_message = encode(message, encoder_alphabet)
    puts "Your secret message decoded is: #{unsecret_message}"
    elsif(answer =="x")
    puts "OK, closing"
    else
        puts "I can't do that"
end
end
