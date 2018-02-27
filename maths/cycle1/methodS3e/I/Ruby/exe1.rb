#!/usr/bin/ruby -w
#
puts "-- CALCUL MENTAL --"
puts ''
puts "Choisissez une opération :"
puts "1|a|A : addition; 2|s|S : soustraction; 3|m|M : multiplication; 4|d|D : division"
operation = gets.chomp
print "Choisissez un niveau : 1, 2 ou 3 : "
level = gets.chomp

case operation
when "1", "a", "A"
  puts "OK pour l'addition"
when "2", "s", "S"
  puts "OK pour la soustraction"
when "3", "m", "M"
  puts "OK pour la multiplication"
when "4", "d", "D"
  puts "OK pour la division"
else
  puts "Donnée incorrecte pour le choix de l'opération"
  exit
end

case level
when "1"
  puts "Niveau 1"
when "2"
  puts "Niveau 2"
when "3"
  puts "Niveau 3"
else
  puts "Donnée incorrecte pour le choix du niveau!"
  exit
end

puts "Conseils :"
case operation
when "1", "a", "A"
  puts "1. Comment additionner rapidement ?"
  puts "Décomposer en cherchant les dizaines (ou centaines) les plus proches."
when "2", "s", "S"
  puts "2. Comment soustraire rapidement ?"
  puts "Soit mentalement; soit en partant du deuxième."
when "3", "m", "M"
  puts "3. Comment multiplier rapidement ?"
  puts "a. En utilisant les tables."
  puts "b. En décomposant par addition."
  puts "c. En décomposant par soustraction."
  puts "d. En décomposant par multiplication."
  puts "e. En décomposant par division."
when "4", "d", "D"
  puts "4. Comment diviser rapidement ?"
  puts "a. Mentalement."
  puts "b. En partant du deuxième."
  puts "c. En décomposant par division."
  puts "d. En utilisant la multiplication."
end

def result(int1, int2)
  if int1 == int2 then
    puts "Vrai"
  else
    puts "Faux. Recommencez."
  end
  print "Suivante ? O|n : "
  quit = gets.chomp
  exit if quit == 'n' || quit == 'N'
end

case level
when "1"
  case operation
  when "1", "a", "A"
    begin
      print "1. 17 + 4 = "
      answer = gets.chomp.to_i
      result(21, answer)
    end until answer == 21
    begin
      print "2. 23 + 16 = "
      answer = gets.chomp.to_i
      result(39, answer)
    end until answer == 39
    begin
      print "3. 23 + 18 = "
      answer = gets.chomp.to_i
      result(41, answer)
    end until answer == 41
    begin
      print "4. 63 + 19 = "
      answer = gets.chomp.to_i
      result(82, answer)
    end until answer == 82
    begin
      print "5. 278 + 31 = "
      answer = gets.chomp.to_i
      result(309, answer)
    end until answer == 309
    begin
      print "6. 127 + 47 = "
      answer = gets.chomp.to_i
      result(174, answer)
    end until answer == 174
    begin
      print "7. 253 + 371 = "
      answer = gets.chomp.to_i
      result(624, answer)
    end until answer == 624
    begin
      print "8. 3478 + 88 = "
      answer = gets.chomp.to_i
      result(3566, answer)
    end until answer == 3566
    begin
      print "9. 2456 + 653 = "
      answer = gets.chomp.to_i
      result(3109, answer)
    end until answer == 3109
    begin
      print "10. 1433 + 377 = "
      answer = gets.chomp.to_i
      result(1810, answer)
    end until answer == 1810
    begin
      print "11. 67 + 144 = "
      answer = gets.chomp.to_i
      result(211, answer)
    end until answer == 211
    begin
      print "12. 170 + 430 = "
      answer = gets.chomp.to_i
      result(600, answer)
    end until answer == 600
    puts "Fin du niveau 1."
  when "2", "s", "S"
    begin
      print "1. 21 - 16 = "
      answer = gets.chomp.to_i
      result(5, answer)
    end until answer == 5
    begin
      print "2. 59 - 37 = "
      answer = gets.chomp.to_i
      result(22, answer)
    end until answer == 22
    begin
      print "3. 57 - 39 = "
      answer = gets.chomp.to_i
      result(18, answer)
    end until answer == 18
    begin
      print "4. 119 - 21 = "
      answer = gets.chomp.to_i
      result(98, answer)
    end until answer == 98
    begin
      print "5. 143 - 50 = "
      answer = gets.chomp.to_i
      result(93, answer)
    end until answer == 93
    begin
      print "6. 121 - 56 = "
      answer = gets.chomp.to_i
      result(65, answer)
    end until answer == 65
    begin
      print "7. 247 - 68 = "
      answer = gets.chomp.to_i
      result(179, answer)
    end until answer == 179
    begin
      print "8. 233 - 134 = "
      answer = gets.chomp.to_i
      result(99, answer)
    end until answer == 99
    begin
      print "9. 217 - 53 = "
      answer = gets.chomp.to_i
      result(164, answer)
    end until answer == 164
    begin
      print "10. 110 - 64 = "
      answer = gets.chomp.to_i
      result(46, answer)
    end until answer == 46
    begin
      print "11. 178 - 49 = "
      answer = gets.chomp.to_i
      result(129, answer)
    end until answer == 129
    begin
      print "12. 327 - 88 = "
      answer = gets.chomp.to_i
      result(239, answer)
    end until answer == 239
    puts "Fin du niveau 1."
  when "3", "m", "M"
    begin
      print "1. 21 x 4 = "
      answer = gets.chomp.to_i
      result(84, answer)
    end until answer == 84
    begin
      print "2. 12 x 7 = "
      answer = gets.chomp.to_i
      result(84, answer)
    end until answer == 84
    begin
      print "3. 13 x 5 = "
      answer = gets.chomp.to_i
      result(65, answer)
    end until answer == 65
    begin
      print "4. 33 x 4 = "
      answer = gets.chomp.to_i
      result(132, answer)
    end until answer == 132
    begin
      print "5. 16 x 6 = "
      answer = gets.chomp.to_i
      result(96, answer)
    end until answer == 96
    begin
      print "6. 15 x 9 = "
      answer = gets.chomp.to_i
      result(135, answer)
    end until answer == 135
    begin
      print "7. 25 x 6 = "
      answer = gets.chomp.to_i
      result(150, answer)
    end until answer == 150
    begin
      print "8. 35 x 4 = "
      answer = gets.chomp.to_i
      result(140, answer)
    end until answer == 140
    begin
      print "9. 53 x 5 = "
      answer = gets.chomp.to_i
      result(265, answer)
    end until answer == 265
    begin
      print "10. 63 x 3 = "
      answer = gets.chomp.to_i
      result(189, answer)
    end until answer == 189
    begin
      print "11. 35 x 6 = "
      answer = gets.chomp.to_i
      result(210, answer)
    end until answer == 210
    begin
      print "12. 27 x 7 = "
      answer = gets.chomp.to_i
      result(189, answer)
    end until answer == 189
    puts "Fin du niveau 1."
  when "4", "d", "D"
    begin
      print "1. 360 ÷ 12 = "
      answer = gets.chomp.to_i
      result(30, answer)
    end until answer == 30
    begin
      print "2. 90 ÷ 6 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "3. 210 ÷ 7 = "
      answer = gets.chomp.to_i
      result(30, answer)
    end until answer == 30
    begin
      print "4. 180 ÷ 12 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "5. 500 ÷ 25 = "
      answer = gets.chomp.to_i
      result(20, answer)
    end until answer == 20
    begin
      print "6. 1800 ÷ 24 = "
      answer = gets.chomp.to_i
      result(75, answer)
    end until answer == 75
    begin
      print "7. 270 ÷ 18 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "8. 900 ÷ 60 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "9. 4800 ÷ 120 = "
      answer = gets.chomp.to_i
      result(40, answer)
    end until answer == 40
    begin
      print "10. 350 ÷ 7 = "
      answer = gets.chomp.to_i
      result(50, answer)
    end until answer == 50
    begin
      print "11. 900 ÷ 18 = "
      answer = gets.chomp.to_i
      result(50, answer)
    end until answer == 50
    begin
      print "12. 48 ÷ 12 = "
      answer = gets.chomp.to_i
      result(4, answer)
    end until answer == 4
    puts "Fin du niveau 1."
  end
when "2"
  case operation
  when "1", "a", "A"
    begin
      print "1. 17 + 4 = "
      answer = gets.chomp.to_i
      result(21, answer)
    end until answer == 21
    begin
      print "2. 23 + 16 = "
      answer = gets.chomp.to_i
      result(39, answer)
    end until answer == 39
    begin
      print "3. 23 + 18 = "
      answer = gets.chomp.to_i
      result(41, answer)
    end until answer == 41
    begin
      print "4. 63 + 19 = "
      answer = gets.chomp.to_i
      result(82, answer)
    end until answer == 82
    begin
      print "5. 278 + 31 = "
      answer = gets.chomp.to_i
      result(309, answer)
    end until answer == 309
    begin
      print "6. 127 + 47 = "
      answer = gets.chomp.to_i
      result(174, answer)
    end until answer == 174
    begin
      print "7. 253 + 371 = "
      answer = gets.chomp.to_i
      result(624, answer)
    end until answer == 624
    begin
      print "8. 3478 + 88 = "
      answer = gets.chomp.to_i
      result(3566, answer)
    end until answer == 3566
    begin
      print "9. 2456 + 653 = "
      answer = gets.chomp.to_i
      result(3109, answer)
    end until answer == 3109
    begin
      print "10. 1433 + 377 = "
      answer = gets.chomp.to_i
      result(1810, answer)
    end until answer == 1810
    begin
      print "11. 67 + 144 = "
      answer = gets.chomp.to_i
      result(211, answer)
    end until answer == 211
    begin
      print "12. 170 + 430 = "
      answer = gets.chomp.to_i
      result(600, answer)
    end until answer == 600
    puts "Fin du niveau 1."
  when "2", "s", "S"
    begin
      print "1. 21 - 16 = "
      answer = gets.chomp.to_i
      result(5, answer)
    end until answer == 5
    begin
      print "2. 59 - 37 = "
      answer = gets.chomp.to_i
      result(22, answer)
    end until answer == 22
    begin
      print "3. 57 - 39 = "
      answer = gets.chomp.to_i
      result(18, answer)
    end until answer == 18
    begin
      print "4. 119 - 21 = "
      answer = gets.chomp.to_i
      result(98, answer)
    end until answer == 98
    begin
      print "5. 143 - 50 = "
      answer = gets.chomp.to_i
      result(93, answer)
    end until answer == 93
    begin
      print "6. 121 - 56 = "
      answer = gets.chomp.to_i
      result(65, answer)
    end until answer == 65
    begin
      print "7. 247 - 68 = "
      answer = gets.chomp.to_i
      result(179, answer)
    end until answer == 179
    begin
      print "8. 233 - 134 = "
      answer = gets.chomp.to_i
      result(99, answer)
    end until answer == 99
    begin
      print "9. 217 - 53 = "
      answer = gets.chomp.to_i
      result(164, answer)
    end until answer == 164
    begin
      print "10. 110 - 64 = "
      answer = gets.chomp.to_i
      result(46, answer)
    end until answer == 46
    begin
      print "11. 178 - 49 = "
      answer = gets.chomp.to_i
      result(129, answer)
    end until answer == 129
    begin
      print "12. 327 - 88 = "
      answer = gets.chomp.to_i
      result(239, answer)
    end until answer == 239
    puts "Fin du niveau 1."
  when "3", "m", "M"
    begin
      print "1. 21 x 4 = "
      answer = gets.chomp.to_i
      result(84, answer)
    end until answer == 84
    begin
      print "2. 12 x 7 = "
      answer = gets.chomp.to_i
      result(84, answer)
    end until answer == 84
    begin
      print "3. 13 x 5 = "
      answer = gets.chomp.to_i
      result(65, answer)
    end until answer == 65
    begin
      print "4. 33 x 4 = "
      answer = gets.chomp.to_i
      result(132, answer)
    end until answer == 132
    begin
      print "5. 16 x 6 = "
      answer = gets.chomp.to_i
      result(96, answer)
    end until answer == 96
    begin
      print "6. 15 x 9 = "
      answer = gets.chomp.to_i
      result(135, answer)
    end until answer == 135
    begin
      print "7. 25 x 6 = "
      answer = gets.chomp.to_i
      result(150, answer)
    end until answer == 150
    begin
      print "8. 35 x 4 = "
      answer = gets.chomp.to_i
      result(140, answer)
    end until answer == 140
    begin
      print "9. 53 x 5 = "
      answer = gets.chomp.to_i
      result(265, answer)
    end until answer == 265
    begin
      print "10. 63 x 3 = "
      answer = gets.chomp.to_i
      result(189, answer)
    end until answer == 189
    begin
      print "11. 35 x 6 = "
      answer = gets.chomp.to_i
      result(210, answer)
    end until answer == 210
    begin
      print "12. 27 x 7 = "
      answer = gets.chomp.to_i
      result(189, answer)
    end until answer == 189
    puts "Fin du niveau 1."
  when "4", "d", "D"
    begin
      print "1. 360 ÷ 12 = "
      answer = gets.chomp.to_i
      result(30, answer)
    end until answer == 30
    begin
      print "2. 90 ÷ 6 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "3. 210 ÷ 7 = "
      answer = gets.chomp.to_i
      result(30, answer)
    end until answer == 30
    begin
      print "4. 180 ÷ 12 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "5. 500 ÷ 25 = "
      answer = gets.chomp.to_i
      result(20, answer)
    end until answer == 20
    begin
      print "6. 1800 ÷ 24 = "
      answer = gets.chomp.to_i
      result(75, answer)
    end until answer == 75
    begin
      print "7. 270 ÷ 18 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "8. 900 ÷ 60 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "9. 4800 ÷ 120 = "
      answer = gets.chomp.to_i
      result(40, answer)
    end until answer == 40
    begin
      print "10. 350 ÷ 7 = "
      answer = gets.chomp.to_i
      result(50, answer)
    end until answer == 50
    begin
      print "11. 900 ÷ 18 = "
      answer = gets.chomp.to_i
      result(50, answer)
    end until answer == 50
    begin
      print "12. 48 ÷ 12 = "
      answer = gets.chomp.to_i
      result(4, answer)
    end until answer == 4
    puts "Fin du niveau 1."
  end
when "3"
  case operation
  when "1", "a", "A"
    begin
      print "1. 17 + 4 = "
      answer = gets.chomp.to_i
      result(21, answer)
    end until answer == 21
    begin
      print "2. 23 + 16 = "
      answer = gets.chomp.to_i
      result(39, answer)
    end until answer == 39
    begin
      print "3. 23 + 18 = "
      answer = gets.chomp.to_i
      result(41, answer)
    end until answer == 41
    begin
      print "4. 63 + 19 = "
      answer = gets.chomp.to_i
      result(82, answer)
    end until answer == 82
    begin
      print "5. 278 + 31 = "
      answer = gets.chomp.to_i
      result(309, answer)
    end until answer == 309
    begin
      print "6. 127 + 47 = "
      answer = gets.chomp.to_i
      result(174, answer)
    end until answer == 174
    begin
      print "7. 253 + 371 = "
      answer = gets.chomp.to_i
      result(624, answer)
    end until answer == 624
    begin
      print "8. 3478 + 88 = "
      answer = gets.chomp.to_i
      result(3566, answer)
    end until answer == 3566
    begin
      print "9. 2456 + 653 = "
      answer = gets.chomp.to_i
      result(3109, answer)
    end until answer == 3109
    begin
      print "10. 1433 + 377 = "
      answer = gets.chomp.to_i
      result(1810, answer)
    end until answer == 1810
    begin
      print "11. 67 + 144 = "
      answer = gets.chomp.to_i
      result(211, answer)
    end until answer == 211
    begin
      print "12. 170 + 430 = "
      answer = gets.chomp.to_i
      result(600, answer)
    end until answer == 600
    puts "Fin du niveau 1."
  when "2", "s", "S"
    begin
      print "1. 21 - 16 = "
      answer = gets.chomp.to_i
      result(5, answer)
    end until answer == 5
    begin
      print "2. 59 - 37 = "
      answer = gets.chomp.to_i
      result(22, answer)
    end until answer == 22
    begin
      print "3. 57 - 39 = "
      answer = gets.chomp.to_i
      result(18, answer)
    end until answer == 18
    begin
      print "4. 119 - 21 = "
      answer = gets.chomp.to_i
      result(98, answer)
    end until answer == 98
    begin
      print "5. 143 - 50 = "
      answer = gets.chomp.to_i
      result(93, answer)
    end until answer == 93
    begin
      print "6. 121 - 56 = "
      answer = gets.chomp.to_i
      result(65, answer)
    end until answer == 65
    begin
      print "7. 247 - 68 = "
      answer = gets.chomp.to_i
      result(179, answer)
    end until answer == 179
    begin
      print "8. 233 - 134 = "
      answer = gets.chomp.to_i
      result(99, answer)
    end until answer == 99
    begin
      print "9. 217 - 53 = "
      answer = gets.chomp.to_i
      result(164, answer)
    end until answer == 164
    begin
      print "10. 110 - 64 = "
      answer = gets.chomp.to_i
      result(46, answer)
    end until answer == 46
    begin
      print "11. 178 - 49 = "
      answer = gets.chomp.to_i
      result(129, answer)
    end until answer == 129
    begin
      print "12. 327 - 88 = "
      answer = gets.chomp.to_i
      result(239, answer)
    end until answer == 239
    puts "Fin du niveau 1."
  when "3", "m", "M"
    begin
      print "1. 21 x 4 = "
      answer = gets.chomp.to_i
      result(84, answer)
    end until answer == 84
    begin
      print "2. 12 x 7 = "
      answer = gets.chomp.to_i
      result(84, answer)
    end until answer == 84
    begin
      print "3. 13 x 5 = "
      answer = gets.chomp.to_i
      result(65, answer)
    end until answer == 65
    begin
      print "4. 33 x 4 = "
      answer = gets.chomp.to_i
      result(132, answer)
    end until answer == 132
    begin
      print "5. 16 x 6 = "
      answer = gets.chomp.to_i
      result(96, answer)
    end until answer == 96
    begin
      print "6. 15 x 9 = "
      answer = gets.chomp.to_i
      result(135, answer)
    end until answer == 135
    begin
      print "7. 25 x 6 = "
      answer = gets.chomp.to_i
      result(150, answer)
    end until answer == 150
    begin
      print "8. 35 x 4 = "
      answer = gets.chomp.to_i
      result(140, answer)
    end until answer == 140
    begin
      print "9. 53 x 5 = "
      answer = gets.chomp.to_i
      result(265, answer)
    end until answer == 265
    begin
      print "10. 63 x 3 = "
      answer = gets.chomp.to_i
      result(189, answer)
    end until answer == 189
    begin
      print "11. 35 x 6 = "
      answer = gets.chomp.to_i
      result(210, answer)
    end until answer == 210
    begin
      print "12. 27 x 7 = "
      answer = gets.chomp.to_i
      result(189, answer)
    end until answer == 189
    puts "Fin du niveau 1."
  when "4", "d", "D"
    begin
      print "1. 360 ÷ 12 = "
      answer = gets.chomp.to_i
      result(30, answer)
    end until answer == 30
    begin
      print "2. 90 ÷ 6 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "3. 210 ÷ 7 = "
      answer = gets.chomp.to_i
      result(30, answer)
    end until answer == 30
    begin
      print "4. 180 ÷ 12 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "5. 500 ÷ 25 = "
      answer = gets.chomp.to_i
      result(20, answer)
    end until answer == 20
    begin
      print "6. 1800 ÷ 24 = "
      answer = gets.chomp.to_i
      result(75, answer)
    end until answer == 75
    begin
      print "7. 270 ÷ 18 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "8. 900 ÷ 60 = "
      answer = gets.chomp.to_i
      result(15, answer)
    end until answer == 15
    begin
      print "9. 4800 ÷ 120 = "
      answer = gets.chomp.to_i
      result(40, answer)
    end until answer == 40
    begin
      print "10. 350 ÷ 7 = "
      answer = gets.chomp.to_i
      result(50, answer)
    end until answer == 50
    begin
      print "11. 900 ÷ 18 = "
      answer = gets.chomp.to_i
      result(50, answer)
    end until answer == 50
    begin
      print "12. 48 ÷ 12 = "
      answer = gets.chomp.to_i
      result(4, answer)
    end until answer == 4
    puts "Fin du niveau 1."
  end
end

