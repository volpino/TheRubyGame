def to_arabic_numeral(roman)
  a=Hash["I",1,"V",5,"X",10,"L",50,"C",100,"D",500,"M",1000]
  s=roman.split(//)
  sum=0
  i=0
  while i <= s.size-2
    if a[s[i]] >= a[s[i+1]]
      sum+=a[s[i]]
      i+=1
    else
      sum+=a[s[i+1]]-a[s[i]]
      i+=2
    end
  end
  if i == s.size-1
    sum+=a[s[-1]]
  end
  sum
end

puts to_arabic_numeral("MCMXCIX")
puts to_arabic_numeral("XXXII")
