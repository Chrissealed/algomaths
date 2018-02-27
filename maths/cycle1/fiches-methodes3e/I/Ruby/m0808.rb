#!/usr/bin/env ruby

require_relative "method08"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method08
  include Corrective

  def answering
    answers = <<EOM

a. PGCD(1596 ; 627) = 57.
b. La formule écrite par l'élève dans la cellule C2 pour obtenir le résultat indiqué
   dans cette cellule par le tableur est : =MOD(A2;B2).
c. La formule écrite par l'élève dans la cellule A3 pour obtenir le résultat indiqué
   dans cette cellule par le tableur est : =B2.

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

