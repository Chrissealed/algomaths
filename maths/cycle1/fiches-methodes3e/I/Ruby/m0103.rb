#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    q1 = 36 / 6
    q2 = 42 / 6
    puts 'a.'
    if q2 == q1 + 1 then
      puts "36 et 42 sont des multiples consécutifs de 6 :"
      puts "36 = 6 x #{q1}"
      puts "42 = 6 x #{q2}"
    else
      puts "36 et 42 ne sont pas multiples consécutifs de 6"
    end

    puts 'b.'
    q1 = 42 / 7
    q2 = 56 / 7
    if q2 == q1 + 1 then
      puts "42 et 56 sont des multiples consécutifs de 7 :"
      puts "42 = 7 x #{q1}"
      puts "56 = 7 x #{q2}"
    else
      puts "42 et 56 ne sont pas des multiples consécutifs de 7"
      puts "en effet #{q1} x 7 = #{q1 * 7}"
      puts "et #{q2} x 7 = #{q2 * 7}"
      puts "or la différence entre #{q2} et #{q1} est #{q2 - q1}"
      puts "il existe donc un entier intermédiaire multiple de 7 :"
      q3 = q1 + 1
      puts "#{q3} x 7 = #{q3 * 7}"
      puts "et donc #{q1 * 7} < #{q3 * 7} < #{q2 * 7}"
    end
  end
end

s = Solution.new
s.exercise_03
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

