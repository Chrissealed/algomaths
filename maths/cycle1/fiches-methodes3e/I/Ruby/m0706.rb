#!/usr/bin/env ruby

require_relative "method07"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method07
  include Corrective

  def answering
    puts 'a.'
    result = 0
    pgcd = PGCD.new(2940, 147)
    result = pgcd.euclide_algorithm

    answer = <<EOM

b. On remarque qu'une seule division euclidienne suffit pour trouver le PGCD
   de 2940 et 147. Elle montre que 2940 est un multiple de 147 (2940 = 147 x 20);
   on peut utiliser la propriété :
   a et b désignant deux entiers non nuls, si a est un multiple de b, alors
   PGCD(a ; b) = b.
EOM

    puts answer
  end
end

s = Solution.new
s.exercise_06
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

