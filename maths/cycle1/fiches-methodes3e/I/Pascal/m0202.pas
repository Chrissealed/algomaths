program m0202;

{$mode objfpc}{$H+}

uses
    method02, display;

var
    dividend, divisor, quotient, remainder : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 2.');
    WriteLn('# ----------');
    WriteLn('# Dans un collège en rénovation, on a décidé de changer les tables de la cantine.');
    WriteLn('# Il y a deux cent soixante demi-pensionnaires et un seul service.');
    WriteLn('# Combien doit-on acheter de nouvelles tables de 8 ?');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    dividend := 260;
    divisor := 8;
    quotient := dividend div divisor;
    remainder := dividend mod divisor;
    WriteLn('Celà revient à se demander combien de fois y-a-t-il ', divisor, ' dans ', dividend, ' ?');
    WriteLn('Soit diviser ', dividend, ' par ', divisor);
    WriteLn(dividend, ' ÷ ', divisor, ' = ', quotient);
    WriteLn('Le reste de la division est : ', dividend, ' mod ', divisor, ' = ', remainder);
    if (remainder > 0) then
    begin
        WriteLn('Il faudra donc ', quotient, ' tables pour servir ', dividend - remainder, ' étudiants');
        WriteLn('plus une table pour servir ', remainder, ' étudiants');
        WriteLn('soit ', quotient + 1, ' tables afin de servir les ', dividend, ' étudiants');
    end
    else
        WriteLn('Il faudra donc exactement ', quotient, ' tables de ', divisor, ' pour servir les ', dividend, ' étudiants.');
end.

