class Method09
  def put_up_method
    method = <<-EOM
###################################################################################
# Méthode 9. Comment déterminer tous les diviseurs communs à deux nombres avec leur
# PGCD :
###################################################################################
# ▲ on détermine le PGCD des deux nombres (méthode 5; 6; 7 ou 8);
# ▲ on détermine la liste de tous les diviseurs du PGCD (= méthode 3);
# ▲ on conclut en donnant la liste trouvée; c'est celle de tous les diviseurs
#   communs aux deux nombres.
#
# Les diviseurs communs de deux nombres sont les diviseurs de leur PGCD.
###################################################################################

    EOM
    puts method
  end

  def exercise_01
    puts '# Exercice 1.'
    puts '# Déterminer la liste des diviseurs communs de 1210 et 462 (voir méthode 5 exercice 1).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_02
    puts '# Exercice 2.'
    puts '# Déterminer la liste des diviseurs communs de 2072 et 370 (voir méthode 5 exercice 4).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_03
    puts '# Exercice 3.'
    puts '# Déterminer la liste des diviseurs communs de 2940 et 1155 (voir méthode 4 exercice 3).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_04
    puts '# Exercice 4.'
    puts '# Déterminer la liste des diviseurs communs de 780 et 504 (voir méthode 7 exercice 1).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_05
    puts '# Exercice 5.'
    puts '# Démontrer que 988 et 363 n\'ont qu\'un seul diviseur commun (voir méthode 7 exercice 2).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06
    puts '# Exercice 6.'
    puts '# Déterminer la liste des diviseurs communs de 7375 et 472 (voir méthode 7 exercice 3).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_07
    puts '# Exercice 7.'
    puts '# Démontrer que 2037 et 454 n\'ont qu\'un seul diviseur commun (voir méthode 7 exercice 5).'
    puts '-----------------------------------------------------------------------------------'
  end

end

