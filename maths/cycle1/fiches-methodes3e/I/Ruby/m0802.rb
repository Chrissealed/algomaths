#!/usr/bin/env ruby

require_relative "method08"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method08
  include Corrective

  def answering
    result = 0
    pgcd = PGCD.new(2_130_071_799, 789_801_903)
    result = pgcd.euclide_algorithm
  end
end

s = Solution.new
s.exercise_01
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

