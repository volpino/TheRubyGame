def count_gifts_short(gifts, day)
  gifts.gsub(/^A/,'1').split("\n")[-day,12].map(&:to_i).inject:+
end

def count_gifts_fast(gifts, day)
  sum = 0
  gifts.split("\n").pop(day).each do |line|
    n = line.to_i
    sum += n > 0 ? n : 1
  end
  sum
end

gifts = <<HEREDOC
12 Drummers Drumming
11 Pipers Piping
10 Lords-a-Leaping
9 Ladies Dancing
8 Maids-a-Milking
7 Swans-a-Swimming
6 Geese-a-Laying
5 Gold Rings
4 Colly Birds
3 French Hens
2 Turtle Doves
A Partridge in a Pear Tree.
HEREDOC

day = 10
puts count_gifts_short(gifts, day)
puts count_gifts_fast(gifts, day)
