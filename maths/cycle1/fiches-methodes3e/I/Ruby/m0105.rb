#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    puts "Trois multiples consécutifs de 5 s'écrivent :"
    puts "5(n-1), 5n et 5(n+1) où n est un entier différent de 0"
    puts  "or 5(n-1) + 5n + 5(n+1) = 5n - 5 + 5n + 5n + 5 = 15n."
    puts "La somme de trois multiples consécutifs  de 5 peut donc s'écrire 15n,"
    puts "produit de 15 par un entier."
    puts "La somme de trois multiples consécutifs de 5 est donc bien un multiple de 15."
    puts "Prenons un exemple :"
    m = 5*3 + 5*4 + 5*5
    n = 4*15
    puts "5 x 3 + 5 x 4 + 5 x 5 = #{m}"
    puts "et 4 x 15 = #{n}."
  end
end

s = Solution.new
s.exercise_05
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

