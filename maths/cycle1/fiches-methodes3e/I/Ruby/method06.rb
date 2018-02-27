class Method06
  def put_up_method
    method = <<-EOM
###################################################################################
# Méthode 6. Pour déterminer le PGCD de deux nombres entiers par l'algorithme
# des soustractions à l'aide d'un tableur :
###################################################################################
# ▲ on ouvre une feuille de calcul et on choisit trois colonnes A, B et C;
# ▲ on marque les titres : Nombre a, Nombre b et Différence respectivement dans les
# cellules A1, B1 et C1;
# ▲ on place le plus grand des deux nombres et le plus petit respectivement dans
# les cellules A2 et B2 et on inscrit =A2-B2 dans la cellule C2;
# ▲ on écrit : =MAX(B2;C2), =MIN(B2;C2) et =A3-B3 respectivement dans les cellules
# A3, B3 et C3;
# ▲ on sélectionne les cellules A3B3C3 et on tire vers le bas le petit carré situé
# en bas à droite de la sélection jusqu'à trouver 0 dans la colonne C;
# ▲ on donne le PGCD des deux nombres qui est la dernière différence non nulle.
###################################################################################

    EOM
    puts method
  end

  def exercise_01
    puts '# Exercice 1.'
    puts '# ----------'
    puts '# PGCD(1260 ; 735)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_02
    puts '# Exercice 2.'
    puts '# ----------'
    puts '# PGCD(25,333,333,344 ; 14,777,777,784)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_03
    puts '# Exercice 3.'
    puts '# ----------'
    puts '# PGCD(2015 ; 1789)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_04
    puts '# Exercice 4.'
    puts '# ----------'
    puts '# PGCD(4092 ; 1705)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_05
    puts '# Exercice 5.'
    puts '# ----------'
    puts '# PGCD(877 ; 531)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06
    puts '# Exercice 6.'
    puts '# ----------'
    puts '# PGCD(108,777 ; 61,206)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_07
    puts '# Exercice 7.'
    puts '# ----------'
    puts '# a. PGCD(165 ; 132); b. PGCD(330 ; 264); c. PGCD(495 ; 396)'
    puts '# d. Quelles relations y a-t-il entre le PGCD de 165 et 132 et chacun des PGCD de'
    puts '# 330 et 264 et de 495 et 396 ? Faire le lien avec les nombres donnés.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_08
    puts '# Exercice 8.'
    puts '# ----------'
    puts '# Sur une feuille, un élève a créé cette feuille de calcul pour trouver le PGCD'
    puts '# de 2691 et 1035 par l\'algorithme des soustractions.'
    puts '#'
    puts '# |   |   A  |   B  |   C  |'
    puts '# --------------------------'
    puts '# | 1 |   a  |   b  |  a-b |'
    puts '# --------------------------'
    puts '# | 2 | 2691 | 1035 | 1656 |'
    puts '# --------------------------'
    puts '# | 3 | 1656 | 1035 |  621 |'
    puts '# --------------------------'
    puts '# | 4 | 1035 |  621 |  414 |'
    puts '# --------------------------'
    puts '# | 5 |  621 |  414 |  207 |'
    puts '# --------------------------'
    puts '# | 6 |  414 |  207 |  207 |'
    puts '# --------------------------'
    puts '# | 7 |  207 |  207 |   0  |'
    puts '# --------------------------'
    puts '#'
    puts '# a. En utilisant sa feuille de calcul, dire quel est le PGCD de 2691 et 1035.'
    puts '# b. Quelle est la formule écrite par l\'élève dans la cellule C2 pour obtenir'
    puts '#    le résultat indiqué dans cette cellule par le tableur ?'
    puts '# c. Quelle est la formule écrite par l\'élève dans la cellule B3 pour obtenir'
    puts '#    le résultat indiqué dans cette cellule par le tableur ?'
    puts '-----------------------------------------------------------------------------------'
  end

end

