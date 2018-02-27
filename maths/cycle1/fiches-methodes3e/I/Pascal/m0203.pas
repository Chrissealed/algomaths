program m0203;

{$mode objfpc}{$H+}

uses
    method02, display;

var
    quotient, remainder, divisor, dividend : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 3.');
    WriteLn('# ----------');
    WriteLn('# Dans une division euclidienne, le quotient est 19, le reste est 4 et le');
    WriteLn('# diviseur 6. Quel est le dividende ?');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    quotient := 19;
    remainder := 4;
    divisor := 6;
    dividend := divisor * quotient + remainder;
    WriteLn('Le dividende est donc ', divisor, ' x ', quotient, ' + ', remainder, ' = ', dividend);
end.

