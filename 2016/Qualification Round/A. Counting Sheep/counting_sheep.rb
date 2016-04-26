require 'set'

t = gets.to_i

(1..t).each do |_case|
  n = gets.to_i
  if n == 0
    puts "Case ##{_case}: INSOMNIA"
  else
    s = Set.new
    it = n
    loop do
      it.to_s.chars.each do |value|
        number = value.to_i
        s << number
      end
      break if s.count == 10
      it += n
    end
    puts "Case ##{_case}: #{it}"
  end
end
