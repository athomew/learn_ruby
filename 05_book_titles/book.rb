class Book

  attr_reader :title

  def name=(str)
    @name = titleize(str)
  end

  def titleize phrase
    # Still missing a bunch of words in the 'little words' list.
    little_words = ["and", "the", "a", "an", "for", "but", "or", "over", "in", "out", "for", "from", "under"]
    words = phrase.split
    words.length.times do |i|
      unless ((little_words.include? words[i]) and (i > 0))
        words[i] = words[i].capitalize
      end
    end
    words.join(" ")
  end

end
