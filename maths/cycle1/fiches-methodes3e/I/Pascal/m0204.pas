program m0204;

{$mode objfpc}{$H+}

uses
    method02, display;

var
    dividend, divisor, quotient, remainder : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 4.');
    WriteLn('# ----------');
    WriteLn('# Quelles sont, parmi les égalités suivantes, celles qui traduisent une division');
    WriteLn('# euclidienne ? Si l''égalité convient, donner le dividende, le diviseur, le quotient');
    WriteLn('# et le reste. Sinon expliquer pourquoi l''égalité ne convient pas.');
    WriteLn('# a. 291 = 18 x 15 + 21; b. 102 = 6 x 16 + 6; c. 142 = 8 x 17 + 6');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    WriteLn('a.');
    WriteLn('La première égalité ne traduit pas une division euclidienne');
    WriteLn('parce que le reste est supérieur au diviseur,');
    WriteLn('soit 21 > 18 et 21 > 15 et cependant 18 x 15 + 21 = ', 18*15+21, '.');

    WriteLn('b.');
    WriteLn('Cette égalité ne traduit pas la division euclidienne de 102 par 6');
    WriteLn('car 6 est égal au diviseur et ne peut donc pas être le reste');
    WriteLn('d''une division euclidienne par 6.');
    WriteLn('Cependant cette égalité traduit une division euclidienne car');
    if (102 div 16 = 6) then
    begin
        dividend := 102; divisor := 16; quotient := 6; remainder := 6;
        WriteLn('le dividende est ', dividend, ', le diviseur ', divisor, ', le quotient ', quotient, ' et le reste ', remainder);
        WriteLn('on vérifie que 16 x 6 + 6 = ', 16*6+6, '.');
    end
    else
        WriteLn('L''égalité ne convient pas.');

    WriteLn('c.');
    WriteLn('Cette égalité traduit une division euclidienne car');
    if (142 div 17 = 8) then
    begin
      dividend := 142; divisor := 17; quotient := 8; remainder := 6;
      WriteLn('le dividende est ', dividend, ', le diviseur ', divisor, ', le quotient ', quotient, ' et le reste ', remainder);
      WriteLn('on vérifie que 8 x 17 + 6 = ', 8*17+6, '.');
    end
    else
      WriteLn('L''égalité ne convient pas.');

    WriteLn('Cette égalité traduit aussi une division euclidienne car');
    if (142 div 8 = 17) then
    begin
      dividend := 142; divisor := 8; quotient := 17; remainder := 6;
      WriteLn('le dividende est ', dividend, ', le diviseur ', divisor, ', le quotient ', quotient, ' et le reste ', remainder);
      WriteLn('on vérifie que 17 x 8 + 6 = ', 17*8+6, '.');
    end
    else
      WriteLn('L''égalité ne convient pas.');

end.

