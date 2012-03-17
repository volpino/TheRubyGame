def capitalize(string)
  string.split.each(&:capitalize!)*" "
end

string = "The small brown & ginger fox JUMPED OVER the gate"

puts capitalize(string)
