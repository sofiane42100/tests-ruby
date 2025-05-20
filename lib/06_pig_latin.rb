def translate(phrase)
  # Sépare la phrase en mots, traduit chaque mot, puis rejoint le tout en une phrase
  phrase.split.map do |word|
    translate_word(word)
  end.join(" ")
end

def translate_word(word)
  vowels = ['a', 'e', 'i', 'o', 'u']

  # Si le mot commence par une voyelle, on ajoute simplement "ay" à la fin
  if vowels.include?(word[0])
    return word + "ay"
  end

  # Gérer les phonèmes spéciaux 'qu' et 'sch' comme un seul son consonantique
  cluster = ''  # stocke le groupe initial de consonnes
  i = 0         # index pour parcourir le mot

  while i < word.length
    if word[i, 2] == 'qu'    # si 'qu' est trouvé, on l'ajoute entier au cluster
      cluster += 'qu'
      i += 2
    elsif word[i, 3] == 'sch' # pareil pour 'sch'
      cluster += 'sch'
      i += 3
    elsif !vowels.include?(word[i]) # sinon, tant que c'est une consonne, on l'ajoute
      cluster += word[i]
      i += 1
    else
      break  # on arrête dès qu'on trouve une voyelle
    end
  end

  # On reforme le mot : partie après le cluster + cluster + "ay"
  word[i..-1] + cluster + "ay"
end
