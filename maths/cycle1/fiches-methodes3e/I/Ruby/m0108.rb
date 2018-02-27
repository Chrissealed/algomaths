#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    m = 393 / 13
    n1 = 13 * m
    n2 = 13 * (m+1)
    if 393 % 13 == 0 then
      puts "393 et un multiple de 13 : 13 x #{m}"
    else
      puts "13 x #{m} = #{n1} et 13 x #{m+1} = #{n2} donc 13 x #{m} < 393 < 13 x #{m+1}"
      puts "donc on ne peut pas trouver un entier q tel que 393 = 13q donc 393 n'est pas un"
      puts "multiple de 13."
    end

    m = 793 / 13
    n1 = 13 * m
    n2 = 13 * (m+1)
    if 793 % 13 == 0 then
      puts "#{n1} = 13 * #{m} donc 793 est un multiple de 13."
    else
      puts "793 n'est pas un multiple de 13!"
      puts "13 x #{m} = #{n1} < 393 < 13 x #{m+1} = #{n2}"
    end
  end
end

s = Solution.new
s.exercise_08
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

