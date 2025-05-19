def translate(phrase)
  # Séparer la phrase en mots
  phrase.split.map do |word|
    translate_word(word)
  end.join(" ")
end

def translate_word(word)
  vowels = ['a', 'e', 'i', 'o', 'u']

  # Si le mot commence par une voyelle, ajouter "ay" à la fin
  if vowels.include?(word[0])
    return word + "ay"
  end

  # Pour gérer "sch" et "qu" comme un seul phonème
  # Trouver la position où la première voyelle (ou "qu") apparaît

  # Regex pour les phonèmes "qu" et "sch"
  # On va déplacer tous les consonnes initiaux (incluant "qu" et "sch") en fin, puis ajouter "ay"
  # Regexp to match initial consonant cluster including 'qu' or 'sch'
  
  # On va chercher le cluster consonant initial
  cluster = ''
  i = 0

  while i < word.length
    # S'il y a "qu" à la position i, on considère 'qu' comme un seul phonème consonant
    if word[i, 2] == 'qu'
      cluster += 'qu'
      i += 2
    # S'il y a "sch" à la position i
    elsif word[i, 3] == 'sch'
      cluster += 'sch'
      i += 3
    # Sinon si consonne
    elsif !vowels.include?(word[i])
      cluster += word[i]
      i += 1
    else
      break
    end
  end

  # Retourner le mot modifié : le reste + cluster + "ay"
  word[i..-1] + cluster + "ay"
end
