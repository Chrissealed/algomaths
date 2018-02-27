unit usual_divisibility_criteria;

{$mode objfpc}{$H+}

{ # Ce module est destiné à coder les critères de divisibilité usuels
# des nombres pour lesquels ceux-ci existent :
# 2, 3, 4, 5, 9, (10, 100, 1000, etc.), 11 et 25.
# Ceci permet d'éviter d'utiliser la méthode par modulo (%)
# directement sur le nombre lui-même et ainsi d'accélérer le traitement.
# Il contient autant de méthodes 'DivisibleBy_n?(integer)'
# ou 'n' est l'un des nombres ci-dessus,
# avec une variante : 'DivisibleBy_0_queue?(integer)'
# pour la série des multiples de 10.
# Chacune de ces méthodes renvoie 'true' ou 'false'
# selon que le nombre donné en argument est divisible ou pas par 'n'.
# Le module est employé notamment par la classe
# 'ListingOfNonNullIntegerDivisors' du fichier 'non-null-integer-divisors.rb' }

interface

function DivisibleBy_2(const n: Integer): Boolean;
function DivisibleBy_3(const n: Integer): Boolean;
function DivisibleBy_4(const n: Integer): Boolean;
function DivisibleBy_5(const n: Integer): Boolean;
function DivisibleBy_9(const n: Integer): Boolean;
function DivisibleBy_10(const n: Integer): Boolean;
function DivisibleBy_11(const n: Integer): Boolean;
function DivisibleBy_25(const n: Integer): Boolean;

implementation

uses
    SysUtils, StrUtils;

{ Critère de divisibilité par 2, le chiffre des unités est : 0, 2, 4, 6 ou 8 }
function DivisibleBy_2(const n: Integer): Boolean;
var
    units : String;
begin
    units := RightStr(IntToStr(n), 1);
    case units of
        '0', '2', '4', '6', '8': result := true;
    else
        result := false; 
    end;
end;

{ Critère de divisibilité par 3 : la somme des chiffres est divisible par 3 }
function DivisibleBy_3(const n: Integer): Boolean;
type
    TStrArray = Array of String;
var
    i, x, sl : Integer;
    a : TStrArray;
begin
    { Pour un nombre à un chiffre}
    sl := Length(IntToStr(n));
    if (sl = 1) then
        begin
            if (n mod 3) = 0 then
                result := true
            else
                result := false;
            Exit;
        end;
    { Pour un nombre à plusieurs chiffres, extraire chacun des chiffres afin de faire leur somme }
    i := 0;
    x := 0;
    repeat
        SetLength(a, i+1);
        a[i] := MidStr(IntToStr(n), sl-i+1, 1);
        x := x + StrToInt(a[i]);
        i += 1;
    until (i > sl - 1);
    if (x mod 3 = 0) then
        result := true 
    else
        result := false;
end;

{ Critère de divisibilité par 4 : le nombre formé par les deux chiffres de droite est divisible par 4 }
function DivisibleBy_4(const n: Integer): Boolean;
var
    sl : Integer;
    s : String;
begin
    { Pour un nombre à un chiffre }
    sl := Length(IntToStr(n));
    if (sl = 1) then
    begin
        if (n mod 4 = 0) then
            result := true
        else
            result := false;
        exit;
    end;
    { Pour un nombre à plusieurs chiffres }
    { Extraire les deux derniers chiffres }
    s := RightStr(IntToStr(n), 2);
    { Déterminer le modulo des deux chiffres de droite }
    if (StrToInt(s) mod 4 = 0) then
        result := true
    else
        result := false;
end;

{ Critère de divisibilité par 5 : le chiffre des unités est 0 ou 5 (cf. DivisibleBy_2?) }
function DivisibleBy_5(const n: Integer): Boolean;
var
    units : String;
begin
    units := RightStr(IntToStr(n), 1);
    case units of
        '0', '5': result := true;
    else
        result := false;
    end;
end;

{ Pas de critère de divisibilité particulier pour 6, 7 et 8 }

{ Critère de divisibilité par 9 : la somme des chiffres est divisible par 9 (cf.DivisibleBy_3?) }
function DivisibleBy_9(const n: Integer): Boolean;
type
    TStrArray = Array of String;
var
    i, x, sl : Integer;
    a : TStrArray;
begin
    sl := Length(IntToStr(n));
    { Pour un nombre à un chiffre }
    if (sl = 1) then
    begin
        if (n = 9) then
            result := true
        else
            result := false;
        exit;
    end;
    { Pour un nombre à plusieurs chiffres, extraire chacun des chiffres afin d'effectuer leur somme }
    i := 0;
    x := 0;
    repeat
        SetLength(a, i+1);
        a[i] := MidStr(IntToStr(n), sl-i+1, 1);
        x := x + StrToInt(a[i]);
        i += 1;
    until (i > sl - 1);
    if (x mod 9 = 0) then
        result := true
    else
        result := false;
end;

{ Critère de divisibilité par 10, 100, 1000 etc. : le nombre se termine respectivement par 0, 00, 000, etc. }
function DivisibleBy_10(const n: Integer): Boolean;
begin
    if (RightStr(IntToStr(n), 1) = '0') then
        result := true
    else
        result := false;
end;


{ Critère de divisibilité par 11 : la différence entre
la somme des chiffres de rang pair et celle
des chiffres de rang impair est divisible par 11. }
function DivisibleBy_11(const n: Integer): Boolean;
type
    TEvensArray = Array of String;
    TOddsArray = Array of String;
var
    n0, n1, i, j, k, sl : Integer;
    evens : TEvensArray;
    odds : TOddsArray;
begin
    i := 1;
    n0 := 0; n1 := 0;
    j := 0; k := 0;
    sl := Length(IntToStr(n));
    if (n < 11) then
        begin
            result := false;
            exit;
        end;
    repeat
        { Tableau des nombres pairs }
        if (i mod 2 = 0) then
            begin
                SetLength(evens, j+1);
                evens[j] := MidStr(IntToStr(n), sl-j+1, 1);
                j += 1;
            end
        else
            begin
                { Tableau des nombres impairs }
                SetLength(odds, k+1);
                odds[k] := MidStr(IntToStr(n), sl-k+1, 1);
                k += 1;
            end;
        i += 1;
    until (i >= sl);
    i := 0;
    { Somme des nombres pairs }
    while (i < Length(evens)) do
    begin
        n0 += StrToInt(evens[i]);
        i += 1;
    end;
    { Somme des nombres impairs }
    i := 0;
    while (i < Length(odds)) do
    begin
        n1 += StrToInt(odds[i]);
        i += 1;
    end;
    { Différence entre les pairs et les impairs }
    if ((n0 - n1) mod 11 = 0) then
        result := true
    else
        result := false;
end;

{ Critère de divisibilité par 25 : le nombre se termine par 00, 25, 50 ou 75 }
function DivisibleBy_25(const n: Integer): Boolean;
begin
    if (n < 25) then
        begin
            result := false;
            exit;
        end;
    if (n = 25) then
        begin
            result := true;
            exit;
        end;

    case (RightStr(IntToStr(n), 2)) of
        '00', '25', '50', '75': result := true;
    else
        result := false;
    end;
end;

end.

