#!/usr/bin/env ruby

require_relative "method02"
require_relative "corrective"

class Solution < Method02
  include Corrective

  def answering
    eggs = 59
    capacity = 12
    boxes = eggs / capacity
    remainder = eggs % capacity

    puts "#{eggs} = #{capacity} x #{boxes} + #{remainder}."
    if remainder > 0 then
      puts "Il faudra #{boxes + 1} boîtes à la fermière pour ranger ses œufs."
      print "La dernière boîte contiendra #{remainder} "
      puts remainder > 1 ? 'œufs.' : 'œuf.'
    else
      puts "Les œufs seront contenus exactement dans #{boxes} boîtes."
    end
  end
end

s = Solution.new
s.exercise_07
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

