#write your code here

def echo phrase
  phrase
end

def shout phrase
  phrase.upcase
end

def repeat phrase, n=2
  (phrase + ' ')*(n-1) + phrase
end

def start_of_word word, n
  start = []
  n.times do |i|
  start.push(word[i])
  end
  result = start.join("")
end

def first_word phrase
  words = phrase.split
  words[0]
end

def titleize phrase
  # Still missing a bunch of words in the 'little words' list. 
  little_words = ["and", "the", "a", "an", "for", "but", "or", "over"]
  words = phrase.split
  words.length.times do |i|
    unless ((little_words.include? words[i]) and (i > 0))
      words[i] = words[i].capitalize
    end
  end
  words.join(" ")
end
