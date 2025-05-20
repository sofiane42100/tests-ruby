def hello                  # Définit une méthode nommée `hello` sans paramètre — https://ruby-doc.org/core-2.7.0/doc/syntax/methods_rdoc.html
  "Hello!"                # Retourne simplement la chaîne de caractères "Hello!" — https://ruby-doc.org/core-2.7.0/String.html
end

def greet(name)           # Définit une méthode `greet` qui prend un argument `name` — https://ruby-doc.org/core-2.7.0/doc/syntax/methods_rdoc.html
  "Hello, #{name}!"       # Interpolation de chaîne pour insérer `name` dans le message — https://ruby-doc.org/core-2.7.0/doc/syntax/literals_rdoc.html#label-String+Interpolation
end
