#write your code here

def translate phrase
  words = phrase.split
  words.length.times do |i|
    words[i] = translate_word words[i]
  end
  phrase = words.join(" ")
end

def starting_consonants word

  vowels = ['a', 'e', 'i', 'o', 'u']

  if word[0] == 'q'
    vowels = ['a', 'e', 'i', 'o']
  elsif not (vowels.include?(word[0])) and (word[1] == 'q')
    vowels = ['a', 'e', 'i', 'o']
  end

  n = 0
  i = 0

  while ((not vowels.include?(word[i])) and (i < word.length))
    n = n + 1
    i = i + 1
  end

  n
end

def translate_word word

  n = starting_consonants word
  i = 0
  consonants = []
  word_letters = word.split("")
  backward_letters = word_letters.reverse

  while (i < n)
    consonants.push(backward_letters.pop)
    i = i + 1
  end

  word = backward_letters.reverse.join + consonants.join + "ay"

  word
end
