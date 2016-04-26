t = gets.to_i

(1..t).each do |_case|
  chars = gets.chomp.chars
  str = ""
  chars.each do |char|
    if str[0] == nil || str[0] > char
      str << char
    else
      str = char + str
    end
  end
  puts "Case ##{_case}: #{str}"
end
