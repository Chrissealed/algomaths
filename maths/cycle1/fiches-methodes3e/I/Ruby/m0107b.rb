#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    n1, n2, n3 = 11, 13, 15
    m1 = n1 * n2
    m2 = n1 * n3

    puts 'a.'
    puts "Si un nombre est multiple à la fois de #{n1} et de #{n2} qui n'ont pas de diviseur commun"
    puts "autre que 1, alors il est nécessairement multiple de leur produit #{m1} (#{n1} x #{n2} = #{m1}),"
    puts "or #{m1} est inférieur à 150 il répond à la question. On peut trouver un nombre non nul"
    puts "inférieur à 150 multiple à la fois de #{n1} et de #{n2}, c'est #{m1}."
    puts 'b.'
    puts "Si un nombre est multiple à la fois de #{n1} et de #{n3} qui n'ont pas de diviseur commun"
    puts "autre que 1, alors il est nécessairement multiple de leur produit #{m2} (#{n1} x #{n3} = #{m2}),"
    puts "or #{m2} est supérieur à 150, on ne peut donc pas trouver un nombre non nul inférieur à 150"
    puts "multiple à la fois de #{n1} et de #{n3}."
  end
end

s = Solution.new
s.exercise_07
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

