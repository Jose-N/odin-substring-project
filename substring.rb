def substrings(sentence, dictionary)
  listing_hash = {}
  sentence_array = sentence.downcase.split(" ")
  dictionary.each do |d|
    counter = 0
    sentence_array.each do |w|
      if w.include? d 
        counter += 1
      end
    end
    if counter > 0
      listing_hash[d] = counter
    end
  end
  puts listing_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
