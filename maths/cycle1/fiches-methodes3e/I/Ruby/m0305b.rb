#!/usr/bin/env ruby

require_relative "method03"
require_relative "corrective"
require_relative 'non-null-integer-divisors'

class Solution < Method03
  include Corrective

  def answering
    print "Donner un nombre d'élèves à répartir en plusieurs groupes : "
    pupils = gets.chomp.to_i
    a = Array.new

    divisors_listing = NonNullIntegerDivisors.new
    a = divisors_listing.establishing_list(pupils)

    # Si c'est un nombre premier, aucune possibilité.
    if a.size > 2 then
      puts "Les possibilités sont :"
    else
      puts "Aucune possibilité!"
    end
    while a.size > 2
      # Eliminer le premier et le dernier éléments du tableau
      a.shift
      a.pop
      puts "#{a.first} groupes de #{a.last} élèves."
      puts "#{a.last} groupes de #{a.first} élèves."
    end
  end
end

s = Solution.new
s.exercise_05b
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

