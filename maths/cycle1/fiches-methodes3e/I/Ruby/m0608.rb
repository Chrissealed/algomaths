#!/usr/bin/env ruby

require_relative "method06"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method06
  include Corrective

  def answering
    answers =<<EOM

a. Le PGCD de 2691 et de 1035 est la dernière différence non nulle :
   PGCD(2691 ; 1035) = 207
b. La formule écrite par l'élève dans la cellule C2 pour obtenir le résultat
   indiqué dans cette cellule par le tableur est : =A2-B2.
c. La formule écrite par l'élève dans la cellule B3 pour obtenir le résultat
   indiqué dans cette cellule par le tableur est : =MIN(B2;C2).
EOM

    puts answers
  end
end

s = Solution.new
s.exercise_08
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

