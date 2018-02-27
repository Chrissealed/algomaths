#!/usr/bin/env ruby

require_relative "method03"
require_relative "corrective"
require_relative 'non-null-integer-divisors'

class Solution < Method03
  include Corrective

  def answering
    divisors_listing = NonNullIntegerDivisors.new
    print "Entrez un entier non nul dont vous voulez établir la liste des diviseurs : "
    number = gets.chomp.to_i
    divisors_listing.establishing_list(number)
  end
end

s = Solution.new
s.exercise_04b
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

