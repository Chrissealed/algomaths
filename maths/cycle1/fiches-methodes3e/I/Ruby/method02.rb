class Method02
  def put_up_method
    method = <<-EOM
###################################################################################
# Méthode 2. Comment utiliser la division euclidienne ?
###################################################################################
# Pour utiliser la division euclidienne :
# ▲ on s'appuie sur sa définition : a et b étant deux entiers naturels et b non nul,
# effectuer la division euclidienne de a par b, c'est trouver deux entiers naturels
# q et r tels que a = bq + r et r < b.
# a est le dividende, b le diviseur, q le quotient et r le reste.
###################################################################################

    EOM
    puts method
  end

  def exercise_01
    puts '# Exercice 1.'
    puts '# ----------'
    puts '# On effectue la division euclidienne d\'un entier a par 7, on trouve 23 comme'
    puts '# quotient.'
    puts '# a. Quels sont les restes possibles ?'
    puts '# b. Trouver toutes les valeurs de a.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_02
    puts '# Exercice 2.'
    puts '# ----------'
    puts '# Dans un collège en rénovation, on a décidé de changer les tables de la cantine.'
    puts '# Il y a deux cent soixante demi-pensionnaires et un seul service.'
    puts '# Combien doit-on acheter de nouvelles tables de 8 ?'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_03
    puts '# Exercice 3.'
    puts '# ----------'
    puts '# Dans une division euclidienne, le quotient est 19, le reste est 4 et le'
    puts '# diviseur 6. Quel est le dividende ?'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_04
    puts '# Exercice 4.'
    puts '# ----------'
    puts '# Quelles sont, parmi les égalités suivantes, celles qui traduisent une division'
    puts '# euclidienne ? Si l\'égalité convient, donner le dividende, le diviseur, le quotient'
    puts '# et le reste. Sinon expliquer pourquoi l\'égalité ne convient pas.'
    puts '# a. 291 = 18 x 15 + 21; b. 102 = 6 x 16 + 6; c. 142 = 8 x 17 + 6'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_05
    puts '# Exercice 5.'
    puts '# ----------'
    puts '# On distribue 52 cartes à jouer à trois personnes qui reçoivent chacune le même'
    puts '# nombre de cartes. Combien de cartes recevra au maximum chaque personne ?'
    puts '# Combien de cartes restera-t-il ?'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06
    puts '# Exercice 6.'
    puts '# ----------'
    puts '# Lors d\'un voyage scolaire à Millau, on doit répartir 22 garçons dans des chambres'
    puts '# à 4 lits. Combien faudra-t-il au minimum de chambres pour que chacun dispose d\'un'
    puts '# lit ?'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_07
    puts '# Exercice 7.'
    puts '# ----------'
    puts '# Une fermière a récolté 59 œufs. Pour les transporter au marché et les vendre,'
    puts '# elle les range dans des boîtes de 12. Combien lui faudra-t-il de boîtes ?'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_08
    puts '# Exercice 8.'
    puts '# ----------'
    puts '# Un confiseur a pu réaliser 346 chocolats. Il veut les présenter pour la vente'
    puts '# dans des coffrets de 16. Combien pourra-t-il remplir de coffrets ?'
    puts '-----------------------------------------------------------------------------------'
  end

end

