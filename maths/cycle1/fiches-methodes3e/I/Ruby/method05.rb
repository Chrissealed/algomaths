class Method05
  def put_up_method
    method = <<-EOM
###################################################################################
# Méthode 5. Pour déterminer le PGCD de deux nombres entiers par l'algorithme
# des soustractions :
###################################################################################
# ▲ on calcule la différence des deux nombres;
# ▲ on garde le plus petit des deux nombres et la différence trouvée et on écrit
# que le PGCD cherché est leur PGCD;
# ▲ on recommence le même procédé avec les deux nouveaux nombres jusqu'à l'obtention
# de deux nombres égaux, le PGCD est égal à leur valeur.
# La méthode s'appuie sur les propriétés suivantes : a et b désignant deux entiers,
# si a = b, alors PGCD(a;b) = a = b et si a > b, PGCD(a;b) = PGCD(b;a-b).
###################################################################################

    EOM
    puts method
  end

  def exercise_01
    puts '# Exercice 1.'
    puts '# ----------'
    puts '# Déterminer le PGCD de 1210 et 462.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_02
    puts '# Exercice 2.'
    puts '# ----------'
    puts '# Déterminer le PGCD de 510 et 374.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_03
    puts '# Exercice 3.'
    puts '# ----------'
    puts '# Déterminer le PGCD de 189 et 55.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_04
    puts '# Exercice 4.'
    puts '# ----------'
    puts '# Déterminer le PGCD de 2072 et 370.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_05
    puts '# Exercice 5.'
    puts '# ----------'
    puts '# Déterminer le PGCD de 1631 et 932.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06
    puts '# Exercice 6.'
    puts '# ----------'
    puts '# Déterminer le PGCD de 2940 et 1155.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06b
    puts '# Exercice 6b.'
    puts '# ----------'
    puts '# Déterminer le PGCD de n1 et n2 (saisie utilisateur).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_07
    puts '# Exercice 7.'
    puts '# ----------'
    puts '# a. Déterminer le PGCD de 15 et 9 puis celui de 75 et 45.'
    puts '# b. Compléter 75 = ... x 15 et 45 = ... x 9.'
    puts '# Quelle relation y a-t-il entre le PGCD de 15 et de 9 et celui de 75 et 45 ?'
    puts '-----------------------------------------------------------------------------------'
  end

end

