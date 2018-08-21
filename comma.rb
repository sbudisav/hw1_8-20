def add_comma(num) 
  a = num.to_s.split('').reverse
  i = 0
  a.length.times do 
    if i%3 == 0
      a.insert(i, ',')
    end
  end
  a = a.join.reverse.to_i
  return a
end
p add_comma(500000)
