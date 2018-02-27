class Method03
  def put_up_method
    method = <<-EOM
###################################################################################
# Méthode 3. Comment établir la liste des diviseurs d'un entier non nul ?
###################################################################################
# ▲ on commence la liste par 1 et on la termine par le nombre lui-même;
# ▲ on cherche ensuite si 2 est un diviseur du nombre, si ce n'est pas le cas,
# on passe à 3, si c'est le cas on calcule le nombre qui multiplié par 2 donne le
# nombre choisi, ce second facteur est aussi un diviseur;
# ▲ on cherche si 3 est un diviseur du nombre, si ce n'est pas le cas, on passe à 4,
# si c'est le cas on calcule le nombre qui multiplié par 3 donne le nombre choisi,
# ce second facteur est aussi un diviseur;
# ▲ on continue et on détermine ainsi les diviseurs dans l'ordre croissant à partir
# de 1 et dans l'ordre décroissant à partir du nombre, on s'arrête quand on arrive
# à un diviseur déjà trouvé.
# REMARQUE : le nombre de diviseurs d'un entier non nul est pair sauf si ce nombre
# est un carré parfait. Tout nombre non nul est un diviseur de 0.
###################################################################################

    EOM
    puts method
  end

  def exercise_01
    puts '# Exercice 1.'
    puts '# ----------'
    puts '# Donner la liste des diviseurs de 108.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_02
    puts '# Exercice 2.'
    puts '# ----------'
    puts '# Donner la liste des diviseurs de 36.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_03
    puts '# Exercice 3.'
    puts '# ----------'
    puts '# Donner la liste des diviseurs de 257.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_04
    puts '# Exercice 4.'
    puts '# ----------'
    puts '# Donner la liste des diviseurs de 300.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_04b
    puts '# Exercice 4b.'
    puts '# ----------'
    puts '# Donner la liste des diviseurs d\'un entier non nul (saisie utilisateur).'
    puts '# (ex: 108, 36, 257, 300...).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_05
    puts '# Exercice 5.'
    puts '# ----------'
    puts '# On veut répartir 32 élèves pour un travail en plusieurs groupes comprenant chacun'
    puts '# le même nombre d\'élèves. Donner toutes les possibilités sachant que chaque groupe'
    puts '# est constitué de plusieurs élèves.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_05b
    puts '# Exercice 5b.'
    puts '# -----------'
    puts '# On veut répartir x élèves pour un travail en plusieurs groupes comprenant chacun'
    puts '# le même nombre d\'élèves. Donner toutes les possibilités sachant que chaque groupe'
    puts '# est constitué de plusieurs élèves (saisie utilisateur de x).'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06
    puts '# Exercice 6.'
    puts '# ----------'
    puts '# a. Donner la liste des diviseurs de 72.'
    puts '# b. Donner la liste des diviseurs de 84.'
    puts '# c. Donner la liste des diviseurs communs de 72 et de 84.'
    puts '-----------------------------------------------------------------------------------'
  end

  def exercise_06b
    puts '# Exercice 6b.'
    puts '# ----------'
    puts '# a. Donner la liste des diviseurs de n1. (saisie utilisateur)'
    puts '# b. Donner la liste des diviseurs de n2. (saisie utilisateur)'
    puts '# c. Donner la liste des diviseurs communs de n1 et de n2.'
    puts '-----------------------------------------------------------------------------------'
  end

end

