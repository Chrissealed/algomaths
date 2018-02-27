#!/usr/bin/env ruby

require_relative 'method10'
require_relative 'corrective'
require_relative 'pgcd'
# 'non-null-integer-divisors.rb' est déjà inclus dans 'pgcd.rb'

class Solution < Method10
  include Corrective

  def answering
    int1, int2 = 5167, 2277
    a = Array.new
    list = NonNullIntegerDivisors.new
    a = list.establishing_list(int1)

    puts ''
    pgcd = PGCD.new(int1, int2)
    result = pgcd.euclide_algorithm
    if result > 1 then
      puts "#{result} > 1 donc #{int1} et #{int2} ne sont pas premiers entre eux."
    else
      puts "Le PGCD de #{int1} et #{int2} est #{result} donc les nombres #{int1} et #{int2} sont premiers entre eux."
    end
  end
end

s = Solution.new
s.exercise_09
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

