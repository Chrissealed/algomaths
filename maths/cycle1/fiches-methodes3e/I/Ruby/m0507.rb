#!/usr/bin/env ruby

require_relative "method05"
require_relative "corrective"
require_relative 'pgcd'

class Solution < Method05
  include Corrective

  def answering
    pgcd = PGCD.new(15, 9)
    pgcd1 = pgcd.soustraction_algorithm

    pgcd = PGCD.new(75, 45)
    pgcd2 = pgcd.soustraction_algorithm

    n1 = 75 ; n2 = 15
    x = n1 / n2
    puts "#{n1} = #{x} x #{n2}"

    n3 = 45 ; n4 = 9
    y = n3 / n4
    puts "#{n3} = #{y} x #{n4}"

    puts "Comme de plus PGCD(#{n2} ; #{n4}) = #{pgcd1} et PGCD de(#{n1} ; #{n3}) = #{pgcd2}, alors"
    puts "PGCD(#{n1} ; #{n3}) = PGCD(#{x} x #{n2} ; #{x} x #{n4}) = #{x} x #{pgcd1} = #{x} x PGCD(#{n2} ; #{n4})"
    puts "#{n1} et #{n3} sont les quintuples respectifs de #{n2} et #{n4}, le PGCD de #{n1} et #{n3}"
    puts "est le quintuple du PGCD de #{n2} et #{n4}."
  end
end

s = Solution.new
s.exercise_07
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

