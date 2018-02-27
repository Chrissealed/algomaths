#!/usr/bin/env ruby

require_relative "method02"
require_relative "corrective"

class Solution < Method02
  include Corrective

  def answering
    puts "D'après la définition de la division euclidienne on a :"
    puts "a / 7 = 23 + r et r < 7. Le reste est strictement inférieur au diviseur 7"
    puts "donc les restes possibles sont r = 0, 1, 2, 3, 4, 5 ou 6"
    puts ""
    d = 7
    q = 23
    puts "On calcule le dividende a pour tous les restes possibles :"
    r = 0
    puts "r = 0, alors a = #{q} x #{d} + #{r} d'où a = #{q*d}"
    r = 1
    puts "r = 1, alors a = #{q} x #{d} + #{r} d'où a = #{q*d+r}"
    r = 2
    puts "r = 2, alors a = #{q} x #{d} + #{r} d'où a = #{q*d+r}"
    r = 3
    puts "r = 3, alors a = #{q} x #{d} + #{r} d'où a = #{q*d+r}"
    r = 4
    puts "r = 4, alors a = #{q} x #{d} + #{r} d'où a = #{q*d+r}"
    r = 5
    puts "r = 5, alors a = #{q} x #{d} + #{r} d'où a = #{q*d+r}"
    r = 6
    puts "r = 6, alors a = #{q} x #{d} + #{r} d'où a = #{q*d+r}"
  end
end

s = Solution.new
s.exercise_01
bool = true
bool = s.put_up_method?
if bool then s.put_up_method end
s.put_up_correct_version?
s.answering

