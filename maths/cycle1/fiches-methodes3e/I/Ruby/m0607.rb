#!/usr/bin/env ruby

require_relative "method06"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method06
  include Corrective

  def answering
    result1 = 0
    pgcd = PGCD.new(165, 132)
    result1 = pgcd.soustraction_algorithm

    result2 = 0
    pgcd = PGCD.new(330, 264)
    result2 = pgcd.soustraction_algorithm

    result3 = 0
    pgcd = PGCD.new(495, 396)
    result3 = pgcd.soustraction_algorithm

    comment = <<EOM

On remarque que 66 = 2 x 33 alors PGCD(330 ; 264) = 2 x PGCD(165 ; 132)
et comme 99 = 3 x 33 alors PGCD(495 ; 396) = 3 x PGCD(165 ; 132).
330 = 2 x 165 et 264 = 2 x 132.
495 = 3 x 165 et 396 = 3 x 132.
Soit PGCD(2 x 165 ; 2 x 132) = 2 x PGCD(165 ; 132)
     PGCD(3 x 165 ; 3 x 132) = 3 x PGCD(165 ; 132)
EOM

    puts comment
  end
end

s = Solution.new
s.exercise_07
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

