def substrings(word, substringsArray)
  
  substringHash = Hash.new
  
  substringsArray.each do |element|
    scanResultArray = word.downcase.scan(element)
    
    if(scanResultArray.size > 0)
      substringHash[element] = scanResultArray.size
    end
  end

  substringHash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)