# Ce module est destiné à coder les critères de divisibilité usuels
# des nombres pour lesquels ceux-ci existent :
# 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25.
# Ceci permet d'éviter d'utiliser la méthode par modulo (%)
# directement sur le nombre lui-même et ainsi d'accélérer le traitement.
# Il contient autant de méthodes 'divisible_by_n?(integer)'
# ou 'n' est l'un des nombres ci-dessus,
# avec une variante : 'divisible_by_0_queue?(integer)'
# pour la série des multiples de 10.
# Chacune de ces méthodes renvoie 'true' ou 'false'
# selon que le nombre donné en argument est divisible ou pas par 'n'.
# Le module est employé notamment par la classe
# 'ListingOfNonNullIntegerDivisors' du fichier 'non-null-integer-divisors.rb'
module DivisibilityCriteria

  # Critère de divisibilité par 2, le chiffre des unités
  # est : 0, 2, 4, 6 ou 8
  def divisible_by_2?(integer)
    n = integer
    units = n.to_s[n.to_s.size-1]
    case units when
      '0', '2', '4', '6', '8' then return true
    else
      return false
    end
  end

  # Critère de divisibilité par 3 :
  # la somme des chiffres est divisible par 3
  def divisible_by_3?(integer)
    n = integer
    # Pour un nombre à un chiffre
    if n.to_s.size == 1 then
      if n % 3 == 0 then
        return true
      else
        return false
      end
      exit
    end
    # Pour un nombre à plusieurs chiffres, extraire chacun des chiffres
    # afin de faire leur somme
    i = 0
    a = Array.new
    x = 0
    loop do
      a[i] = n.to_s[i]
      x = x + a[i].to_i
      i += 1
      break if i > n.to_s.size - 1
    end
    if x % 3 == 0 then
      return true
    else
      return false
    end
  end

  # Critère de divisibilité par 4 :
  # le nombre formé par les deux chiffres de droite est divisible par 4
  def divisible_by_4?(integer)
    n = integer
    # Pour un nombre à un chiffre
    if n.to_s.size == 1 then
      if n % 4 == 0 then
        return true
      else
        return false
      end
      exit
    end
    # Pour un nombre à plusieurs chiffres
    a = Array.new
    x = ""
    i = 0
    # Extraire les deux derniers chiffres
    loop do
      a[i] = n.to_s[n.to_s.size-(i+1)]
      x += a[i]
      i += 1
      break if i >= 2
    end
    # Les mettre à l'endroit afin de déterminer le modulo des
    # deux chiffres de droite
    if x.reverse.to_i % 4 == 0 then
      return true
    else
      return false
    end
  end

  # Critère de divisibilité par 5 : le chiffre des unités
  # est 0 ou 5 (cf. divisible_by_2?)
  def divisible_by_5?(integer)
    n = integer
    units = n.to_s[n.to_s.size - 1]
    case units when
      '0', '5' then return true
    else
      return false
    end
  end

  # Pas de critère de divisibilité particulier pour 6, 7 et 8

  # Critère de divisibilité par 9 : la somme des chiffres est divisible par 9 (cf.divisible_by_3?)
  def divisible_by_9?(integer)
    n = integer
    # Pour un nombre à un chiffre
    if n.to_s.size == 1 then
      if n == 9 then
        return true
      else
        return false
      end
      exit
    end
    # Pour un nombre à plusieurs chiffres, extraire chacun des chiffres
    # afin d'effectuer leur somme
    i = 0
    a = Array.new
    x = 0
    loop do
      a[i] = n.to_s[i]
      x = x + a[i].to_i
      i += 1
      break if i > n.to_s.size - 1
    end
    if x % 9 == 0 then
      return true
    else
      return false
    end
  end

  # Critère de divisibilité par 10, 100, 1000 etc. :
  # le nombre se termine respectivement par 0, 00, 000, etc.
  def divisible_by_0_queue?(integer)
    n = integer
    i = 1
    j = '0'
    flag = false
    if n == 0 then
      flag = true
    else
      until n.to_s[n.to_s.size - i] != '0' do
        if n.to_s[(n.to_s.size - i)..(n.to_s.size - 1)] == j
          i += 1
          # Concatène les 0
          j += '0'
          flag = true
        else
          flag = false
        end
      end
    end
    return flag
  end

  # Critère de divisibilité par 11 : la différence entre la somme des chiffres
  # de rang pair et celle des chiffres de rang impair est divisible par 11.
  def divisible_by_11?(integer)
    n = integer
    evens = Array.new
    odds = Array.new
    flag = false
    if n < 11 then
      flag = false
      exit
    end
    i = 1
    j = k = 0
    begin
      # Tableau des nombres pairs
      if i % 2 == 0 then
        evens[j] = n.to_s[n.to_s.size - i]
        j += 1
      else
        # Tableau des nombres impairs
        odds[j] = n.to_s[n.to_s.size - i]
        k += 1
      end
      i += 1
    end while i <= n.to_s.size
    i = 0
    n0 = 0
    n1 = 0
    # Somme des nombres pairs
    while i < evens.size
      n0 += evens[i].to_i
      i += 1
    end
    # Somme des nombres impairs
    i = 0
    while i < odds.size
      n1 += odds[i].to_i
      i += 1
    end
    # Différence entre les pairs et les impairs
    if (n0 - n1) % 11 == 0 then
      flag = true
    else
      flag = false
    end
    return flag
  end

  # Critère de divisibilité par 25 :
  # le nombre se termine par 00, 25, 50 ou 75
  def divisible_by_25?(integer)
    n = integer
    flag = false
    if n < 25 then flag = false; return flag end
    if n == 25 then flag = true; return flag end
    case n.to_s[-2..-1] when
      '00', '25', '50', '75' then flag = true
    else
      flag = false
    end
    return flag
  end

end

