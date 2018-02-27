class Method07
  def put_up_method
    method = <<-EOM
###################################################################################
# Méthode 7. Comment déterminer le PGCD de deux nombres entiers par l'algorithme
# d'Euclide ?
###################################################################################
# ▲ on effectue la division euclidienne du plus grand nombre par le plus petit;
# ▲ on conserve le plus petit des deux nombres et le reste trouvé et on écrit que
# le PGCD cherché est leur PGCD;
# ▲ on continue ainsi jusqu'à l'obtention d'un reste nul, le PGCD est le dernier
# reste non nul.
# La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
# si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
# a par b
###################################################################################

    EOM
    puts method
  end

  def exercise_01
    puts '# Exercice 1.'
    puts '# ----------'
    puts '# Déterminer le PGCD de 780 et 504.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_02
    puts '# Exercice 2.'
    puts '# Déterminer le PGCD de 988 et 363.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_03
    puts '# Exercice 3.'
    puts '# Déterminer le PGCD de 7375 et 472.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_04
    puts '# Exercice 4.'
    puts '# a. Déterminer le PGCD de 2072 et 370.'
    puts '# b. Comparer avec l\'algorithme des soustractions (méthode 5 exercice 4)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_05
    puts '# Exercice 5.'
    puts '# Déterminer le PGCD de 2037 et 454.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06
    puts '# Exercice 6.'
    puts '# a. Déterminer le PGCD de 2940 et 147.'
    puts '# b. Que remarque-t-on ?'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06b
    puts '# Exercice 6b.'
    puts '# a. Déterminer le PGCD de n1 et n2 (saisies utilisateur).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_07
    puts '# Exercice 7.'
    puts '# a. Déterminer le PGCD de 36 et 20 puis celui de 108 et 60.'
    puts '# b. Recopier et compléter : 108 est le ... de 36; 60 est le ... de 20.'
    puts '#    Quelle relation a-t-on entre le PGCD de 108 et 60 et celui de 36 et 20 ?'
    puts '-----------------------------------------------------------------------------------'
  end

end

