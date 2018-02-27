unit m0107unit;

{$mode objfpc}{$H+}

interface

type
    Tm0107 = Class
        i : Integer; j : Integer;
        m : Integer; n : Integer;
        flag : Boolean;

        constructor Create();
        procedure Wording();
        procedure DisplayResult();
    end;

implementation

procedure Tm0107.Wording();
begin
    WriteLn('# Exercice 7 :');
    WriteLn('# -----------');
    WriteLn('# Peut-on trouver un nombre non nul inférieur à 150 qui soit à la fois');
    WriteLn('# a. multiple de 11 et de 13 ?');
    WriteLn('# b. multiple de 11 et de 15 ?');
    WriteLn('-----------------------------------------------------------------------------------');
end;

procedure Tm0107.DisplayResult();
begin
    WriteLn('a.');
    while (11 * i < 150) do
    begin
        m := 11 * i;
        while 13 * j < 150 do
        begin
            n := 13 * j;
            if (n = m) then
            begin
                WriteLn('Le nombre ', n, ' > 0 et < 150 est à la fois multiple de 11 et de 13 : ', n, ' = 11 x ', i, ' et 13 x ', j);
                flag := true;
                j += 1;
                break;
            end;
            j += 1;
        end;
        i += 1;
        { Réinitialisation de j pour la boucle suivante }
        j := 2;
    end;
    if not flag then WriteLn('Pas de multiple commun à 11 et 13 compris entre 0 et 150!');

    WriteLn('b.');
    i := 2;
    j := 2;
    flag := false;
    while (11 * i < 150) do
    begin
        m := 11 * i;
        while (15 * j < 150) do
        begin
            n := 15 * j;
            if n = m then
            begin
                WriteLn('Le nombre ', n, ' > 0 et < 150 est à la fois multiple de 11 et de 15 : ', n, ' = 11 x ', i, ' et 15 x ', j);
                flag := true;
                j += 1;
                break;
            end;
            j += 1;
        end;
        i += 1;
        { Réinitialisation de j pour la boucle suivante }
        j := 2;
    end;
    if not flag then WriteLn('Pas de multiple commun à 11 et 15 compris entre 0 et 150!');
end;

constructor Tm0107.Create();
begin
    inherited Create;
    i := 2; j := 2;
    m := 0; n := 0;
    flag := false;
end;

end.

