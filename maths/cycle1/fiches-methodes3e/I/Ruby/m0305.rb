#!/usr/bin/env ruby

require_relative "method03"
require_relative "corrective"
require_relative 'non-null-integer-divisors'

class Solution < Method03
  include Corrective

  def answering
    pupils = 32
    a = Array.new

    divisors_listing = NonNullIntegerDivisors.new
    a = divisors_listing.establishing_list(pupils)

    puts "Les possibilités sont :"
    while a.size > 2
      # Eliminer le premier élément du tableau (1) et le dernier (32)
      a.shift
      a.pop
      puts "#{a.first} groupes de #{a.last} élèves."
      puts "#{a.last} groupes de #{a.first} élèves."
    end
  end
end

s = Solution.new
s.exercise_05
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

