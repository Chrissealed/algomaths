require_relative 'non-null-integer-divisors'

class PGCD
  attr_reader :dividend, :divisor

  def initialize(int_dividend, int_divisor)
    # Test du nombre le plus grand
    if int_dividend == int_divisor then
      @dividend = int_dividend
      @divisor = int_divisor
    elsif int_dividend > int_divisor then
      @dividend = int_dividend
      @divisor = int_divisor
    else
      @dividend = int_divisor
      @divisor = int_dividend
    end
    # Si il y a un nombre égal à 0 où négatif
    if int_dividend == 0 || int_divisor == 0 || int_dividend < 0 || int_divisor < 0 then
      puts "Les deux nombres doivent être des entiers positifs!"
      exit
    end
  end

  ###################################################################################
  # Pour déterminer le PGCD de deux nombres entiers par l'algorithme
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

  def soustraction_algorithm
    n1 = @dividend
    x = n1
    n2 = @divisor
    y = n2
    # Si le dividende et le diviseur sont égaux
    if @dividend == @divisor then
      a = Array.new
      list = NonNullIntegerDivisors.new
      a = list.establishing_list(@dividend)
      puts "PGCD(#{@dividend} ; #{@divisor}) = #{@dividend}."
      return a
    end
    loop do
      n3 = n1 - n2
      if n2 > n3 then
        puts "#{n1} - #{n2} = #{n3} d'où PGCD(#{n1} ; #{n2}) = PGCD(#{n2} ; #{n3})"
        n1 = n2; n2 = n3
      elsif n2 < n3 then
        puts "#{n1} - #{n2} = #{n3} d'où PGCD(#{n1} ; #{n2}) = PGCD(#{n3} ; #{n2})"
        n1 = n3
      elsif n2 == n3 then
        puts "#{n1} - #{n2} = #{n3} d'où PGCD(#{n1} ; #{n2}) = PGCD(#{n2} ; #{n3})"
        puts "or PGCD(#{n2} ; #{n3}) = #{n3}"
        puts "On est arrivé à deux nombres égaux, donc PGCD(#{x} ; #{y}) = #{n3}."
        return n3
      end
    end
  end

  ###################################################################################
  # Comment déterminer le PGCD de deux nombres entiers par l'algorithme
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

  def euclide_algorithm
    dividend = @dividend
    divisor = @divisor
    quotient = dividend / divisor
    rest = dividend % divisor
    dv = divisor
    r = rest
    # Si le dividende et le diviseur sont égaux on établit la liste des diviseurs
    if @dividend == @divisor then
      a = Array.new
      list = NonNullIntegerDivisors.new
      a = list.establishing_list(@dividend)
      puts "PGCD(#{@dividend} ; #{@divisor}) = #{@dividend}."
      return a
    end
    begin
      if rest == 0 then
        pgcd = divisor
      elsif dv > r then
        dv = divisor
        r = rest
        quotient = dv / r
        rest = dv % r
        if rest != 0 then
          pgcd = rest
        else
          pgcd = r
        end
        puts "PGCD(#{dividend} ; #{divisor}) = PGCD(#{dv} ; #{r})"
        dividend = dv
        divisor = r
      elsif r > dv then
        dv = rest
        r = divisor
        quotient = r / dv
        rest = r % dv
        if rest != 0 then
          pgcd = rest
        else
          pgcd = dv
        end
        puts "PGCD(#{dividend} ; #{divisor}) = PGCD(#{dv} ; #{r})"
        dividend = r
        divisor = dv
      elsif divisor == rest then
        rest = 0
        pgcd = 1
      end
    end until rest == 0

    puts "PGCD(#{dividend} ; #{divisor}) = PGCD(#{dv} ; #{r})"
    puts "Le PGCD de #{@dividend} et #{@divisor} est #{pgcd}."
    return pgcd
  end
end

