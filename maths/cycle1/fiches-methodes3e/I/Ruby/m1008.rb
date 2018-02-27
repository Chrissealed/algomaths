#!/usr/bin/env ruby

require_relative 'method10'
require_relative 'corrective'
require_relative 'pgcd'
# 'non-null-integer-divisors.rb' est déjà inclus dans 'pgcd.rb'

class Solution < Method10
  include Corrective

  def answering
    int1, int2 = 121, 450
    a = b =  Array.new
    flag = true
    list = NonNullIntegerDivisors.new
    a = list.establishing_list(int1)
    b = list.establishing_list(int2)
    if a.size < b.size || a.size == b.size then
      for i in a do
        for j in b do
          if i == j && i != 1 then
            flag = false
            puts "Les nombres #{int1} et #{int2} ont un diviseur commun autre que 1 : #{i};"
            puts "ils ne sont donc pas premiers entre eux."
            break
          end
        end
      end
    else
      for i in b do
        for j in a do
          if i == j && i != 1 then
            flag = false
            puts "Les nombres #{int1} et #{int2} ont un diviseur commun autre que 1 : #{i};"
            puts "ils ne sont donc pas premiers entre eux."
            break
          end
        end
      end
    end

    if flag then
      puts "Les nombres #{int1} et #{int2} n'ont pas de diviseur commun autre que 1;"
      puts "ils sont donc premiers entre eux."
    end

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
s.exercise_08
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

