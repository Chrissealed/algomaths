# Cette classe est destinée à établir la liste des diviseurs d'un entier naturel non nul.
# Elle contient deux méthodes : 'estabishing_list(integer)' qui prend en argument l'entier
# dont on souhaite établir la liste des diviseurs
# et 'display(integer, square, array)' pour l'affichage d'informations.
# Elle utilise le module 'usual-divisibility-criteria' pour calculer la divisibilité
# des nombres 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25
# en utilisant les critères de divisibilité les plus usuels (cf. ci-dessous).
# Pour les autres nombres, elle utilise l'opérateur modulo (%).
class NonNullIntegerDivisors

  require_relative 'usual-divisibility-criteria'
  include DivisibilityCriteria

  def establishing_list(integer)
    n = integer
    if n == 0 then exit end
    # Compteur des diviseurs successifs
    i = 1
    # Pour stocker le résultat de la division du nombre par i
    x = 0
    # Pour stocker la liste des diviseurs du nombre
    a = Array.new
    # Sera utilisé pour copier 'a' sans doublons et trié de manière croissante
    # de façon à ce que une fois le tableau réduit, il ne se trouve pas de valeur nil
    # avant une nouvelle affectation à a après incrémentation du compteur
    b = Array.new
    # Indice du tableau 'a'
    j = 0
    # Pour stocker un carré parfait
    square = 0

    # 1 est le premier diviseur commun à tous les nombres
    puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{n}"
    # Reporté à la fin
    #puts "#{n} est un diviseur de #{i} : #{n} = #{n} x #{i}"
    a[j] = i
    j += 1
    a[j] = n
    if n == 1 then
      p a
      puts "#{i} est un carré parfait! : #{i} x #{n}"
      if a.size == 2 then
        puts "#{n} est un nombre premier!"
      end
      return a
    end

    # Critère de divisibilité par 2, le chiffre des unités
    # est : 0, 2, 4, 6 ou 8
    i += 1
    if divisible_by_2?(n) then
      x = n / i
      puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
      if i == x then square = i end
      # On fait en sorte que chaque élément soit unique sans compromettre
      # l'indexation de a
      if a.include?(x) then
        # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
        b = a.uniq.sort
      end
      j += 1
      a[j] = i
      j += 1
      a[j] = x
    end

    if i == n then
      display(n, square, b)
      return b
    end

    # Critère de divisibilité par 3 :
    # la somme des chiffres est divisible par 3
    i += 1
    if divisible_by_3?(n)
      x = n / i
      puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
      if i == x then square = i end
      # On fait en sorte que chaque élément soit unique sans compromettre
      # l'indexation de a
      if a.include?(x) then
        # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
        b = a.uniq.sort
      end
      j += 1
      a[j] = i
      j += 1
      a[j] = x
    end

    if i == n then
      display(n, square, b)
      return b
    end

    # Critère de divisibilité par 4 :
    # le nombre formé par les deux chiffres de droite est divisible par 4
    i += 1
    if divisible_by_4?(n)
      x = n / i
      puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
      if i == x then square = i end
      # On fait en sorte que chaque élément soit unique sans compromettre
      # l'indexation de a
      if a.include?(x) then
        # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
        b = a.uniq.sort
      end
      j += 1
      a[j] = i
      j += 1
      a[j] = x
    end

    if i == n then
      display(n, square, b)
      return b
    end

    # Critère de divisibilité par 5 :
    # le chiffre des unités est 0 ou 5
    i += 1
    if divisible_by_5?(n)
      x = n / i
      puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
      if i == x then square = i end
      # On fait en sorte que chaque élément soit unique sans compromettre
      # l'indexation de a
      if a.include?(x) then
        # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
        b = a.uniq.sort
      end
      j += 1
      a[j] = i
      j += 1
      a[j] = x
    end

    if i == n then
      display(n, square, b)
      return b
    end

    # Pas de critère de divisibilité particulier pour les chiffres
    # 6, 7 et 8
    until i == 8 do
      i += 1
      if n % i == 0 then
        x = n / i
        puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
        if i == x then square = i end
        # On fait en sorte que chaque élément soit unique sans compromettre
        # l'indexation de a
        if a.include?(x) then
          # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
          b = a.uniq.sort
        end
        if i == n then
          display(n, square, b)
          return b
        end
        j += 1
        a[j] = i
        j += 1
        a[j] = x
      end
    end

    # Critère de divisibilité par 9 :
    # la somme des chiffres est divisible par 9
    i += 1
    if divisible_by_9?(n)
      x = n / i
      puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
      if i == x then square = i end
      # On fait en sorte que chaque élément soit unique sans compromettre
      # l'indexation de a
      if a.include?(x) then
        # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
        b = a.uniq.sort
      end
      j += 1
      a[j] = i
      j += 1
      a[j] = x
    end

    if i == n then
      display(n, square, b)
      return b
    end

    # Critère de divisibilité par 0, 10, 100, 1000, etc. :
    # le nombre se termine respectivement par 0, 00, 000, etc.
    i += 1
    if divisible_by_0_queue?(n)
      x = n / i
      puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
      if i == x then square = i end
      # On fait en sorte que chaque élément soit unique sans compromettre
      # l'indexation de a
      if a.include?(x) then
        # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
        b = a.uniq.sort
      end
      j += 1
      a[j] = i
      j += 1
      a[j] = x
    end

    if i == n then
      display(n, square, b)
      return b
    end

    # Critère de divisibilité par 11 : la différence entre la somme des chiffres
    # de rang pair et celle des chiffres de rang impair est divisible par 11.
    i += 1
    if divisible_by_11?(n)
      x = n / i
      puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
      if i == x then square = i end
      # On fait en sorte que chaque élément soit unique sans compromettre
      # l'indexation de a
      if a.include?(x) then
        # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
        b = a.uniq.sort
      end
      j += 1
      a[j] = i
      j += 1
      a[j] = x
    end

    if i == n then
      display(n, square, b)
      return b
    end

    # Divisibilité par 12 jusqu'à 24
    # pas de critère particulier
    until i == 24 do
      i += 1
      if n % i == 0 then
        x = n / i
        puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
        if i == x then square = i end
        # On fait en sorte que chaque élément soit unique sans compromettre
        # l'indexation de a
        if a.include?(x) then
          # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
          b = a.uniq.sort
        end
        if i == n then
          display(n, square, b)
          return b
        end
        j += 1
        a[j] = i
        j += 1
        a[j] = x
      end
    end

    # Critère de divisibilité par 25
    i += 1
    if divisible_by_25?(n) then
      x = n / i
      puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
      if i == x then square = i end
      # On fait en sorte que chaque élément soit unique sans compromettre
      # l'indexation de a
      if a.include?(x) then
        # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
        b = a.uniq.sort
      end
      j += 1
      a[j] = i
      j += 1
      a[j] = x
    end

    if i == n then
      display(n, square, b)
      return b
    end

    # Divisibilité par 26 jusqu'à n
    # pas de critère particulier
    until i == n do
      i += 1
      if n % i == 0 then
        x = n / i
        puts "#{i} est un diviseur de #{n} : #{n} = #{i} x #{x}"
        if i == x then square = i end
        # On fait en sorte que chaque élément soit unique sans compromettre
        # l'indexation de a
        if a.include?(x) then
          # Si c'est un carré parfait, le tableau contient deux fois le chiffre du carré
          b = a.uniq.sort
          if i == n then
            display(n, square, b)
            return b
          end
        end
        j += 1
        a[j] = i
        j += 1
        a[j] = x
      end
    end

  end

  def display(integer, square, array)
    p array
    # Le nombre de diviseurs d'un entier non nul est pair
    # sauf si ce nombre est un carré parfait
    if array.size % 2 != 0 then
      puts "#{integer} est un carré parfait! : #{square} x #{square}"
    end
    if array.size == 2 then
      puts "#{integer} est un nombre premier!"
    end
  end

end

