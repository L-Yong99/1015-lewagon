puts "what is your sentence"
sentence = gets.chomp
puts "which word to redact"
redact = gets.chomp
words = sentence.split(" ")
words.each {|word|
if word == redact
  print "REDACTED "
else
  print word + " "
end
}
