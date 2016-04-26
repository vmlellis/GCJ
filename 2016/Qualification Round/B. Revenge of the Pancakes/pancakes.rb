t = gets.to_i

def flip!(values, pos)
  while pos >= 0
    values[pos] = values[pos] == '+' ? '-' : '+'
    pos -= 1
  end
end

(1..t).each do |_case|
  n = gets.chomp
  pos = n.length
  times = 0
  while pos >= 0
    if n[pos] == '-'
      flip!(n, pos)
      times += 1
    end
    pos -= 1
  end
  puts "Case ##{_case}: #{times}"
end
