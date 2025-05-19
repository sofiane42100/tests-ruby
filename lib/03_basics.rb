def who_is_bigger(a, b, c)
  return "nil detected" if a.nil? || b.nil? || c.nil?

  max = { "a" => a, "b" => b, "c" => c }.max_by { |_, v| v }
  "#{max[0]} is bigger"
end

def reverse_upcase_noLTA(str)
  str.reverse.upcase.delete("LTA")
end

def array_42(arr)
  arr.include?(42)
end

def magic_array(arr)
  arr.flatten.sort.map { |x| x * 2 }.reject { |x| x % 3 == 0 }.uniq.sort
end
