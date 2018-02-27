#!/usr/bin/env ruby

require_relative 'method01'
require_relative 'corrective'

class Solution < Method01
  include Corrective

  def answering
    puts "Existe-t-il un entier q tel que 180 = 15q ?"
    integer = 180
    divisor = 15
    q = integer / divisor
    if integer % divisor == 0 then
      puts "#{integer} est divisible par #{divisor} :"
      puts "il existe un entier q tel que #{divisor} x q = #{integer} : #{q}"
    else
      puts "#{integer} n'est pas le produit de #{divisor} par un entier q"
    end

    puts ""
    puts "Existe-t-il un entier q tel que 260 = 15q ?"
    integer = 260
    q = integer / divisor
    m = divisor * q
    n = divisor * (q + 1)
    if integer % divisor == 0 then
      puts "#{integer} est divisible par #{divisor} :"
      puts "il existe un entier q tel que #{divisor} x q = #{integer} : #{q}"
    else
      puts "#{integer} n'est pas le produit de #{divisor} par un entier q"
      puts "#{integer} / #{divisor} = #{q}"
      puts "#{divisor} x #{q} = #{m}"
      puts "#{divisor} x #{q+1} = #{n}"
      puts "or #{m} < #{integer} < #{n}"
      puts "et comme #{q} et #{q+1} sont deux entiers consécutifs,"
      puts "alors il n'existe pas d'entier q tel que #{integer} = #{divisor} x q"
    end
  end
end

s = Solution.new
s.exercise_01
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

