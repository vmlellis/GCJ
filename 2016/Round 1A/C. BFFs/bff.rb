#!/usr/bin/env ruby
def bff(f)
  n = f.size
  res = 0
  longest = Hash.new(0)

  n.times do |i|
    done = [false] * n
    cnt = 0
    j = i
    while !done[j]
      done[j] = true
      cnt += 1
      j = f[j]
    end
    res = [res, cnt].max if i == j # normal circle
    longest[j] = [longest[j], cnt - 1].max if f[f[j]] == j # junctions
  end
  return [res, longest.values.inject(0, :+)].max
end

t = gets.to_i
(1..t).each do |_case|
  n = gets.to_i
  f = gets.chomp.split.map(&:to_i).map { |x| x - 1 }
  puts "Case ##{_case}: #{bff(f)}"
end
