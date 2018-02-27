#!/usr/bin/env ruby

require_relative "method08"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method08
  include Corrective

  def answering
    result = 0
    pgcd = PGCD.new(13692, 6357)
    result = pgcd.euclide_algorithm
  end
end

s = Solution.new
s.exercise_05
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

