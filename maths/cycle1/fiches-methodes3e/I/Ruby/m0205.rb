#!/usr/bin/env ruby

require_relative "method02"
require_relative "corrective"

class Solution < Method02
  include Corrective

  def answering
    cards = 52
    players = 3
    q = cards / players
    remainder = cards % players
    puts "#{cards} = #{players} * #{q} + #{remainder}."
    puts "Chaque joueur se verra attribuer au maximum #{q} cartes."
    print "Il restera #{remainder} "
    puts remainder > 1 ? 'cartes.' : 'carte.'
  end
end

s = Solution.new
s.exercise_05
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

