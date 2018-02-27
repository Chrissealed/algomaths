#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    q1 = 4
    q2 = q1 + 1
    puts "#{q1} x n et #{q2} x n sont deux multiples consécutifs de l'entier n."
    puts "Plus généralement, étant donné deux entiers non nuls q1 et q2"
    puts "tels que q2 = q1 + 1, q1 x n et q2 x n sont deux multiples consécutifs de n."
  end
end

s = Solution.new
s.exercise_04
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

