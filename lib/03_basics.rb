def who_is_bigger(a, b, c)
  return "nil detected" if a.nil? || b.nil? || c.nil?   # Vérifie si un argument est nil et retourne un message d'erreur

  max = { "a" => a, "b" => b, "c" => c }.max_by { |_, v| v }  # Trouve la clé dont la valeur est la plus grande
  "#{max[0]} is bigger"  # Retourne la clé correspondant à la plus grande valeur
end

def reverse_upcase_noLTA(str)
  str.reverse.upcase.delete("LTA")  # Inverse la chaîne, met en majuscule, puis supprime les lettres L, T et A
end

def array_42(arr)
  arr.include?(42)  # Vérifie si le tableau contient le nombre 42
end

def magic_array(arr)
  arr.flatten.sort.map { |x| x * 2 }.reject { |x| x % 3 == 0 }.uniq.sort
  # Aplati le tableau, trie, multiplie chaque élément par 2,
  # supprime les multiples de 3, retire les doublons, puis trie à nouveau
end
