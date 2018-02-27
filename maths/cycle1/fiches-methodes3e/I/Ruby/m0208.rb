#!/usr/bin/env ruby

require_relative "method02"
require_relative "corrective"

class Solution < Method02
  include Corrective

  def answering
    chocolates = 346
    capacity = 16
    caskets = chocolates / capacity
    remainder = chocolates % capacity
    puts "#{chocolates} = #{capacity} x #{caskets} + #{remainder}."
    puts "Le confiseur pourra remplir #{caskets} coffrets."
    print "Il lui restera #{remainder} "
    puts remainder > 1 ? 'chocolats.' : 'chocolat.'
  end
end

s = Solution.new
s.exercise_08
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

