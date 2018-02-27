#!/usr/bin/env ruby

require_relative "method05"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method05
  include Corrective

  def answering
    result = 0
    pgcd = PGCD.new(2940, 1155)
    result = pgcd.soustraction_algorithm
  end
end

s = Solution.new
s.exercise_06
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

