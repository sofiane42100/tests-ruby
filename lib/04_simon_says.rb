def echo(str)
  str  # Retourne la chaîne telle quelle
end

def shout(str)
  str.upcase  # Convertit toute la chaîne en majuscules
end

def repeat(str, n = 2)
  ([str] * n).join(" ")  # Répète la chaîne n fois (par défaut 2), séparées par un espace
end

def start_of_word(word, length)
  word[0, length]  # Retourne les premiers caractères de la chaîne selon la longueur donnée
end

def first_word(sentence)
  sentence.split.first  # Divise la phrase en mots et retourne le premier mot
end

def titleize(sentence)
  little_words = ["and", "the", "in", "of", "on", "at", "to", "for", "by"]  # Mots à ne pas capitaliser sauf au début
  words = sentence.split  # Sépare la phrase en mots

  titleized = words.map.with_index do |word, index|
    if index == 0 || !little_words.include?(word)  # Si premier mot ou mot important, on capitalise
      word.capitalize
    else
      word  # Sinon, on laisse tel quel (en minuscules)
    end
  end

  titleized.join(" ")  # Rejoint les mots en une phrase
end
