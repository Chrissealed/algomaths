#!/usr/bin/env ruby

require_relative "method05"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method05
  include Corrective

  def answering
    print "Entrez un entier positif : "
    n1 = gets.chomp.to_i
    print "Entrez un autre entier positif : "
    n2 = gets.chomp.to_i

    result = 0
    pgcd = PGCD.new(n1, n2)
    result = pgcd.soustraction_algorithm
  end
end

s = Solution.new
s.exercise_06b
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

