#!/usr/bin/env ruby

require_relative "method02"
require_relative "corrective"

class Solution < Method02
  include Corrective

  def answering
    dividend = 260
    divisor = 8
    quotient = dividend / divisor
    remainder = dividend % divisor
    puts "Celà revient à se demander combien de fois y-a-t-il #{divisor} dans #{dividend} ?"
    puts "Soit diviser #{dividend} par #{divisor}"
    puts "#{dividend} ÷ #{divisor} = #{quotient}."
    puts "Le reste de la division est : #{dividend} % #{divisor} = #{remainder}."
    if remainder > 0 then
      puts "Il faudra donc #{quotient} tables pour servir #{dividend - remainder} étudiants"
      puts "plus une table pour servir #{remainder} étudiants"
      puts "soit #{quotient + 1} tables afin de servir les #{dividend} étudiants."
    else
      puts "Il faudra donc exactement #{quotient} tables de #{divisor} pour servir les #{dividend} étudiants."
    end
  end
end

s = Solution.new
s.exercise_02
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

