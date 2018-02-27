#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    n1 = 500 / 11
    n2 = 500 / 17

    while n1 * 11 <= 800 do
      m = n1 * 11
      # Comparaison de tous les multiples de n2 avec ceux de n1
      while n2 * 17 <= 800 do
        n = n2 * 17
        if n == m then
          if n >= 500 && n <= 800 then
            puts "Le nombre #{n} est multiple à la fois de 11 et de 17"
            puts "et est compris entre 500 et 800"
            if n % 2 == 0 then
              puts "de plus #{n} est un nombre pair."
            else
              puts "mais #{n} est un nombre impair."
            end
            # Quand un match est trouvé, continuer à la première boucle
            # au cas où plusieurs matchs seraient possibles
            break
          end
        end
        n2 += 1
      end
      n1 += 1
      # Réinitialisation de n2 pour la boucle suivante
      n2 = 500 / 17
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

