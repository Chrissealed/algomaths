program m0108;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    m, n1, n2 : Integer;
    bool : Boolean;

begin

    WriteLn('# Exercice 8 :');
    WriteLn('# -----------');
    WriteLn('# 393 et 793 sont-ils des multiples de 13 ?');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    m := 393 div 13;
    n1 := 13 * m;
    n2 := 13 * (m+1);
    if (393 mod 13 = 0) then
        WriteLn('393 et un multiple de 13 : 13 x ', m)
    else
    begin
        WriteLn('13 x ', m, ' = ', n1, ' et 13 x ', m+1, ' = ', n2, ' donc 13 x ', m, ' < 393 < 13 x ', m+1);
        WriteLn('donc on ne peut pas trouver un entier q tel que 393 = 13q donc 393 n''est pas un');
        WriteLn('multiple de 13.');
    end;

    m := 793 div 13;
    n1 := 13 * m;
    n2 := 13 * (m+1);
    if (793 mod 13 = 0) then
        WriteLn(n1, ' = 13 * ', m, ' donc 793 est un multiple de 13.')
    else
    begin
        WriteLn('793 n''est pas un multiple de 13!');
        WriteLn('13 x ', m, ' = ', n1, ' < 393 < 13 x ', m+1, ' = ', n2);
    end;
end.

