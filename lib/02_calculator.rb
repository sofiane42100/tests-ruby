def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.sum
end

def multiply(a, b)
  a * b
end

def power(a, b)
  a ** b
end

def factorial(n)
  return 1 if n == 0  #return 1 if n == 0 : on traite le cas particulier où n vaut 0. 
  (1..n).inject(:*)   #la factorielle de 0 est définie comme étant 1.
    end               #(1..n).inject(:*) : on crée une plage de nombres allant de 1 jusqu'à n, 
                      #puis on utilise la méthode inject avec le symbole :* pour multiplier 
                      #successivement tous ces nombres ensemble. Cela calcule la factorielle de n.
                      