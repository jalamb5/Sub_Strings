def substrings(string, dictionary)
    words = string.downcase.gsub(/[^a-z0-9\s]/i, '').split(' ')
    count = Hash.new
    words.each do |word|
        length = word.length
        subword_list = []
        for i in 0..length do
            subword_list << word[0, i] # looks at permutations of word from front to back
            subword_list << word[i, length-1] # looks at permutations of word from back to front
            subword_list << word[i] # looks at each individual char to make sure single letter words ('i', 'a') are caught
        end
        unique_subwords = subword_list.uniq
        unique_subwords.each do |subword|
            if dictionary.include?(subword)                
                if count.has_key?(subword)
                    count[subword] += 1
                else count[subword] = 1
                end
            end
        end
    end
    puts count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
