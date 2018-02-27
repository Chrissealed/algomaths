#!/usr/bin/env ruby

require_relative "method09"
require_relative "corrective"
require_relative 'pgcd'
require_relative 'non-null-integer-divisors'

class Solution < Method09
  include Corrective

  def answering
    int1 = 7375
    int2 = 472
    result = 0
    pgcd = PGCD.new(int1, int2)
    result = pgcd.euclide_algorithm

    puts ""
    a = Array.new
    list = NonNullIntegerDivisors.new
    a = list.establishing_list(result)

    puts ""
    puts "Les diviseurs communs à deux nombres sont les diviseurs de leur PGCD."
  end
end

s = Solution.new
s.exercise_06
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

