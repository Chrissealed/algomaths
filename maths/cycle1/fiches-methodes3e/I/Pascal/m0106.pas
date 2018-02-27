program m0106;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    n1 : Integer = 500 div 11;
    n2 : Integer = 500 div 17;
    n, m : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 6 :');
    WriteLn('# -----------');
    WriteLn('# Trouver un nombre pair compris entre 500 et 800 qui soit multiple à la fois de');
    WriteLn('# 11 et de 17');
    WriteLn('-----------------------------------------------------------------------------------');
    WriteLn();

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    while (n1 * 11 <= 800) do
    begin
        m := n1 * 11;
        { Comparaison de tous les multiples de n2 avec ceux de n1 }
        while (n2 * 17 <= 800) do
        begin
            n := n2 * 17;
            if (n = m) then
            begin
                if (n >= 500) and (n <= 800) then
                begin
                    WriteLn('Le nombre ', n, ' est multiple à la fois de 11 et de 17');
                    WriteLn('et est compris entre 500 et 800');
                end;
                if (n mod 2 = 0) then
                    WriteLn('de plus ', n, ' est un nombre pair')
                else
                    WriteLn('mais ', n, ' est un nombre impair');
                { Quand un match est trouvé, continuer à la première boucle
                  au cas où plusieurs matchs seraient possibles }
                break;
            end;
            n2 += 1;
        end;
        n1 += 1;
        { Réinitialisation de n2 pour la boucle suivante }
        n2 := 500 div 17;
    end;

    {$IFDEF WINDOWS}
    ReadLn;
    {$ENDIF}
end.

