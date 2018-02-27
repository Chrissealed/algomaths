#!/usr/bin/env ruby

require_relative "method02"
require_relative "corrective"

class Solution < Method02
  include Corrective

  def answering
    puts "a."
    puts "La première égalité ne traduit pas une division euclidienne"
    puts "parce que le reste est supérieur au diviseur,"
    puts "soit 21 > 18 et 21 > 15 et cependant 18 x 15 + 21 = #{18*15+21}."
    puts "b."
    puts "Cette égalité ne traduit pas la division euclidienne de 102 par 6"
    puts "car 6 est égal au diviseur et ne peut donc pas être le reste"
    puts "d'une division euclidienne par 6."
    puts "Cependant cette égalité traduit une division euclidienne car"
    if 102/16 == 6 then
      dividend = 102; divisor = 16; quotient = 6; remainder = 6
      puts "le dividende est #{dividend}, le diviseur #{divisor}, le quotient #{quotient} et le reste #{remainder}"
      puts "on vérifie que 16 x 6 + 6 = #{16*6+6}."
    else
      puts "L'égalité ne convient pas."
    end
    puts "c."
    puts "Cette égalité traduit une division euclidienne car"
    if 142/17 == 8 then
      dividend = 142; divisor = 17; quotient = 8; remainder = 6
      puts "le dividende est #{dividend}, le diviseur #{divisor}, le quotient #{quotient} et le reste #{remainder}"
      puts "on vérifie que 8 x 17 + 6 = #{8*17+6}."
    else
      puts "L'égalité ne convient pas."
    end
    puts "Cette égalité traduit aussi une division euclidienne car"
    if 142/8 == 17 then
      dividend = 142; divisor = 8; quotient = 17; remainder = 6
      puts "le dividende est #{dividend}, le diviseur #{divisor}, le quotient #{quotient} et le reste #{remainder}"
      puts "on vérifie que 17 x 8 + 6 = #{17*8+6}."
    else
      puts "L'égalité ne convient pas."
    end
  end
end

s = Solution.new
s.exercise_04
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

