#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    puts "Si un nombre est multiple à la fois de 11 et de 17 qui n'ont pas de diviseur"
    puts "commun autre que 1, alors il est nécessairement multiple de leur produit 187"
    puts "(11 x 17 = 187)."

    n1 = 187
    n2 = 2
    while n1 * n2 <= 800 do
      m = n1 * n2
      puts "On a :"
      puts "187 x #{n2} = #{m}"
      if m > 500 then
        puts "#{m} est un multiple à la fois de 11 et de 17 compris entre 500 et 800;"
        if m % 2 == 0 then
          puts "et #{m} est un nombre pair."
        else
          puts "mais #{m} est un nombre impair."
        end
      end
      n2 += 1
    end
  end
end

s = Solution.new
s.exercise_06
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

