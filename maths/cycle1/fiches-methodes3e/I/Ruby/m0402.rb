#!/usr/bin/env ruby

require_relative "method04"
require_relative "corrective"
require_relative 'non-null-integer-divisors'
require_relative 'common-divisors-array'

class Solution < Method04
  include Corrective
  include CommonDivisorsArray

  def answering
    n1 = 132
    n2 = 220
    a = b = c =  Array.new

    divisors_listing = NonNullIntegerDivisors.new
    puts "Diviseurs de #{n1} :"
    a = divisors_listing.establishing_list(n1)
    puts "Diviseurs de #{n2} :"
    b = divisors_listing.establishing_list(n2)

    c = common_divisors_array(a, b)
    puts "Les diviseurs communs à #{n1} et #{n2} sont :"
    p c
    puts "Le PGCD de #{n1} et #{n2} est #{c[c.size-1]}."
  end
end

s = Solution.new
s.exercise_02
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

