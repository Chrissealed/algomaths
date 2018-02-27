#!/usr/bin/env ruby

require_relative "method02"
require_relative "corrective"

class Solution < Method02
  include Corrective

  def answering
    boys = 22
    beds = 4
    bedrooms = boys / beds
    remainder = boys % beds
    empty_beds = beds - remainder
    puts "#{boys} = #{beds} x #{bedrooms} + #{remainder}."
    if remainder > 0 then
      puts "Il faudra au minimum #{bedrooms + 1} chambres pour que chacun dispose d'un lit."
      print "Il restera #{empty_beds} "
      print empty_beds > 1 ? 'lits inoccupés' : 'lit inoccupé'
      puts " dans l'une des chambres."
    else
      puts "Il faudra exactement #{bedrooms} chambres pour répartir les #{boys} garçons."
    end
  end
end

s = Solution.new
s.exercise_06
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

