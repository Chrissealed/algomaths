#!/usr/bin/env ruby

require_relative "method01"
require_relative "corrective"

class Solution < Method01
  include Corrective

  def answering
    q = 300 / 53
    m = q * 53
    puts "Le produit de #{q} par 53 = #{m}"
    puts "Les multiples de 53 compris entre 300 et 500 sont :"
    loop do
      q += 1
      m = q * 53
      break if m >= 500
      puts "#{q} x 53 = #{m}"
    end
  end
end

s = Solution.new
s.exercise_02
bool = true
bool = s.put_up_method?
if bool then
  s.put_up_method
end
s.put_up_correct_version?
s.answering

