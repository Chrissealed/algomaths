#!/usr/bin/env ruby

require_relative "method10"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method10
  include Corrective

  def answering
    int1, int2 = 4435, 1176
    result = 0
    pgcd = PGCD.new(int1, int2)
    result = pgcd.euclide_algorithm
    if result > 1 then
      puts "#{result} > 1 donc #{int1} et #{int2} ne sont pas premiers entre eux."
    else
      puts "Le PGCD de #{int1} et #{int2} est #{result} donc les nombres #{int1} et #{int2} sont premiers entre eux."
    end
  end
end

s = Solution.new
s.exercise_02
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

