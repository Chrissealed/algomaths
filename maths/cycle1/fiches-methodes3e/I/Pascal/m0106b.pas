program m0106b;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    n1, n2, m : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 6 :');
    WriteLn('# -----------');
    WriteLn('# Trouver un nombre pair compris entre 500 et 800 qui soit multiple à la fois de');
    WriteLn('# 11 et de 17.');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    WriteLn('Si un nombre est multiple à la fois de 11 et de 17 qui n''ont pas de diviseur');
    WriteLn('commun autre que 1, alors il est nécessairement multiple de leur produit 187');
    WriteLn('(11 x 17 = 187).');

    n1 := 187;
    n2 := 2;
    while (n1 * n2 <= 800) do
    begin
        m := n1 * n2;
        WriteLn('On a :');
        WriteLn('187 x ', n2, ' = ', m);
        if (m > 500) then
        begin
            WriteLn(m, ' est un multiple à la fois de 11 et de 17 compris entre 500 et 800;');
            if m mod 2 = 0 then
                WriteLn('et ', m, ' est un nombre pair.')
            else
                WriteLn('mais ', m, ' est un nombre impair.');
        end;
        n2 += 1;
    end;
end.

