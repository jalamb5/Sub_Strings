def substrings(string, dictionary)
    words = string.split(' ')
    count = Hash.new
    words.each do |word|
        if dictionary.include?(word)
            if count.has_key?(word)
                count[word] += 1
            else count[word] = 1
            end
        end
    end
    puts count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)