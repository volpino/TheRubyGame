def to_licence_key(string)
    len = string.length - 1
    (len/5).downto(1).each do |i|
        string = string.insert i*5, "-"
    end
    return string
end

a = "ABCDEFGHIJKLMNOPQRSTUVWXY"
puts to_licence_key(a)
