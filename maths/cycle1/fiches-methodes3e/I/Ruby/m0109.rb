#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    puts "Quatre multiples consécutifs de 6 peuvent s'écrire :"
    puts "6 x (n-1), 6 x n, 6 x (n+1) et 6 x (n+2)"
    puts "où n est un entier naturel > 0."
    puts "6 x (n-1) + 6 x n + 6 x (n+1) + 6 x (n+2) = 6n - 6 + 6n + 6n + 6 + 6n + 12"
    puts "ce qui revient à : 24n + 12"
    puts "or 24n + 12 = 228 ce qui implique que 24n = 228 -12 = 216"
    n = 216 / 24
    puts "et donc que n = 216/24 = #{n}."
    puts "Pour n = #{n},"
    print "6 x #{n-1} + 6 x #{n} + 6 x #{n+1} + 6 x #{n+2} = "
    puts "#{6*(n-1) + 6*n + 6*(n+1) + 6*(n+2)}"
    puts "donc les quatre multiples consécutifs de 6 dont la somme est égale à 228 sont :"
    m1 = 6*(n-1)
    m2 = 6*(n)
    m3 = 6*(n+1)
    m4 = 6*(n+2)
    puts "#{m1}, #{m2}, #{m3}, #{m4}."
    puts "On a bien #{m1} + #{m2} + #{m3} + #{m4} = #{m1+m2+m3+m4}."
  end
end

s = Solution.new
s.exercise_09
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

