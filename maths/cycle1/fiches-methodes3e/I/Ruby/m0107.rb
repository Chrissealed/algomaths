#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    puts 'a.'
    i = 2
    j = 2
    flag = false
    while 11 * i < 150 do
      m = 11 * i
      while 13 * j < 150 do
        n = 13 * j
        if n == m then
          puts "Le nombre #{n} > 0 et < 150  est à la fois multiple de 11 et de 13 : #{n} = 11 x #{i} et 13 x #{j}"
          flag = true
          j += 1
          break
        end
        j += 1
      end
      i += 1
      # Réinitialisation de j pour la boucle suivante
      j = 2
    end
    if !flag then puts "Pas de multiple commun à 11 et 13 compris entre 0 et 150!" end

    puts 'b.'
    i = 2
    j = 2
    flag = false
    while 11 * i < 150 do
      m = 11 * i
      while 15 * j < 150 do
        n = 15 * j
        if n == m then
          puts "Le nombre #{n} > 0 et < 150  est à la fois multiple de 11 et de 15 : #{n} = 11 x #{i} et 15 x #{j}"
          flag = true
          j += 1
          break
        end
        j += 1
      end
      i += 1
      # Réinitialisation de j pour la boucle suivante
      j = 2
    end
    if !flag then puts "Pas de multiple commun à 11 et 15 compris entre 0 et 150!" end
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

