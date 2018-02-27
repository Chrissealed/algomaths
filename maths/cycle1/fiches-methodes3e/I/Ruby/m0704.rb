#!/usr/bin/env ruby

require_relative "method07"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method07
  include Corrective

  def answering
    puts 'a.'
    result = 0
    pgcd = PGCD.new(2072, 370)
    result = pgcd.euclide_algorithm

    pgcd = PGCD.new(2072, 370)
    result = pgcd.soustraction_algorithm

    answer = <<EOM

b. Pour déterminer le PGCD de 2072 et 370 par l'algorithme d'Euclide il faut 3
   opérations tandis que par l'algorithme des soustractions, il en faut 8.
   La recherche du PGCD de 2072 et 370 est plus courte par l'algorithme d'Euclide.
EOM

    puts answer
  end
end

s = Solution.new
s.exercise_04
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

