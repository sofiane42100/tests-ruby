def ftoc(fahrenheit)                                      # Définit une méthode `ftoc` qui convertit des °F en °C — https://ruby-doc.org/core-2.7.0/doc/syntax/methods_rdoc.html
  ((fahrenheit - 32) * 5.0 / 9.0).round                   # Formule de conversion : °C = (°F − 32) × 5/9 + arrondi — https://en.wikipedia.org/wiki/Fahrenheit#Conversion_to_Celsius
end

def ctof(celsius)                                         # Définit une méthode `ctof` qui convertit des °C en °F — https://ruby-doc.org/core-2.7.0/doc/syntax/methods_rdoc.html
  (celsius * 9.0 / 5.0 + 32)                              # Formule de conversion : °F = °C × 9/5 + 32 — https://en.wikipedia.org/wiki/Celsius#Conversion_from_Celsius
end
