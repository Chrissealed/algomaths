class Method08
  def put_up_method
    method = <<-EOM
###################################################################################
# Comment déterminer le PGCD de deux nombres entiers par l'algorithme
# d'Euclide à l'aide d'un tableur ?
###################################################################################
# ▲ on ouvre une feuille de calcul et on choisit trois colonnes A, B et C;
# ▲ on marque les titres : Nombre a, Nombre b et Reste respectivement dans les
# cellules A1, B1 et C1;
# ▲ on place le plus grand des deux nombres et le plus petit respectivement dans les
# cellules A2 et B2 et on inscrit =MOD(A2;B2) dans la cellule C2;
# reste non nul.
# ▲ on écrit =B2, =C2 et =MOD(A3;B3) respectivement dans les cellules A3, B3 et C3;
# ▲ on sélectionne les cellules A3B3C3 et on tire vers le bas le petit carré situé
# en bas à droite de la sélection jusqu'à trouver 0 dans la colonne C;
# ▲ on donne le PGCD des deux nombres qui est le dernier reste non nul.
#
# La méthode s'appuie sur la propriété suivante : a et b désignant deux entiers,
# si a > b, PGCD(a;b) = PGCD(b;r) où r est le reste de la division euclidienne de
# a par b
###################################################################################

    EOM
    puts method
  end

  def exercise_01
    puts '# Exercice 1.'
    puts '# PGCD(1287 ; 819)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_02
    puts '# Exercice 2.'
    puts '# PGCD(2,130,071,799 ; 789,801,903)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_03
    puts '# Exercice 3.'
    puts '# PGCD(2014 ; 1515)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_04
    puts '# Exercice 4.'
    puts '# PGCD(126871 ; 116756)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_05
    puts '# Exercice 5.'
    puts '# PGCD(13692 ; 6357)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06
    puts '# Exercice 6.'
    puts '# PGCD(86105 ; 18234)'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_07
    puts '# Exercice 7.'
    puts '# PGCD(108777 ; 61206)'
    puts '# Comparer ce calcul avec celui utilisant l\'algorithme des soustractions à l\'aide'
    puts '# d\'un tableur (méthode 6 exercice 6).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_08
    puts '# Exercice 8.'
    puts '# Sur une feuille, un élève a créé cette feuille de calcul pour trouver le PGCD de'
    puts '# 1596 et 627 par l\'algorithme d\'Euclide.'
    puts '#'
    puts '# |   |   A   |   B   |   C   |'
    puts '# -----------------------------'
    puts '# | 1 |   a   |   b   |   r   |'
    puts '# -----------------------------'
    puts '# | 2 | 1596  |  627  |  342  |'
    puts '# -----------------------------'
    puts '# | 3 |  627  |  342  |  285  |'
    puts '# -----------------------------'
    puts '# | 4 |  342  |  285  |   57  |'
    puts '# -----------------------------'
    puts '# | 5 |  285  |   57  |    0  |'
    puts '# -----------------------------'
    puts '#'
    puts '# a. En utilisant sa feuille de calcul, dire quel est le PGCD de 1596 et 627.'
    puts '# b. Quelle est la formule écrite par l\'élève dans la cellule C2 pour obtenir le'
    puts '#    résultat indiqué dans cette cellule par le tableur ?'
    puts '# c. Quelle est la formule écrite par l\'élève dans la cellule A3 pour obtenir le'
    puts '#    résultat indiqué dans cette cellule par le tableur ?'
    puts '-----------------------------------------------------------------------------------'
  end

end

