#!/usr/bin/env ruby

require_relative "method02"
require_relative "corrective"

class Solution < Method02
  include Corrective

  def answering
    quotient = 19
    remainder = 4
    divisor = 6
    dividend = divisor * quotient + remainder
    puts "Le dividende est donc #{divisor} x #{quotient} + #{remainder} = #{dividend}."
  end
end

s = Solution.new
s.exercise_03
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

