def find_longest_palindrome(string)
  s = string
  m = ""
  (0..s.size).each do |i|
    k = 1
    while i-k > 0 and s[i+k] == s[i-k]
      k += 1
    end
    k -= 1
    m = s[i-k..i+k] if 2*k > m.size
    k = 1
    while i-k > 0 and s[i-k] == s[i+k-1]
      k += 1
    end
    k -= 1
    m = s[i-k..i+k-1] if 2*k > m.size
  end
  m
end

puts find_longest_palindrome("abacdfgdcabaypqqpy")
