#!/usr/bin/env ruby

require_relative "method07"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method07
  include Corrective

  def answering
    puts 'a.'
    result1 = 0
    pgcd = PGCD.new(36, 20)
    result1 = pgcd.euclide_algorithm

    result2 = 0
    pgcd = PGCD.new(108, 60)
    result2 = pgcd.euclide_algorithm

    answers = <<EOM

b. 108 est le triple de 36; 60 est le triple de 20.
   On a PGCD(108; 60) = #{result2} et PGCD(36 ; 20) = #{result1} et #{result2} est le triple de #{result1};
   Le PGCD de 108 et 60 est donc le triple du PGCD de 36 et 20 :
   PGCD(108 ; 60) = 3 x PGCD(36 ; 20).
EOM

    puts answers
  end
end

s = Solution.new
s.exercise_07
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

