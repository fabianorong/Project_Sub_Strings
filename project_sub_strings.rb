dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, dic)
    
    myhash ={}
    i = 0
    word = word.downcase    

    dic.each do |wordd|        
        if word.include?(wordd)
            myhash[wordd] = word.scan(wordd).length
        end
    end

    p myhash
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
