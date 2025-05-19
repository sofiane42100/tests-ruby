def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 2)
  ([str] * n).join(" ")
end

def start_of_word(word, length)
  word[0, length]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(sentence)
  little_words = ["and", "the", "in", "of", "on", "at", "to", "for", "by"]
  words = sentence.split

  titleized = words.map.with_index do |word, index|
    if index == 0 || !little_words.include?(word)
      word.capitalize
    else
      word
    end
  end

  titleized.join(" ")
end

