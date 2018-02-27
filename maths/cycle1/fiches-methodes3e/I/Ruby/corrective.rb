module Corrective
  def put_up_method?
    print "Afficher la méthode ? O|n : "
    answer = gets.chomp
    case answer
    when
      'n', 'N' then return false
    when
      'o', 'O' then return true
    else
      return true
    end
  end

  def put_up_correct_version?
    print "Afficher le corrigé ? O|n : "
    answer = gets.chomp
    case answer
    when
      'n', 'N' then exit 0
    when
      'o', 'O' then puts
    else
      puts
    end
  end
end

