#!/usr/bin/env ruby

require_relative "method06"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method06
  include Corrective

  def answering
    result = 0
    pgcd = PGCD.new(4092, 1705)
    result = pgcd.soustraction_algorithm
  end
end

s = Solution.new
s.exercise_04
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

