program m0107b;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    n1, n2, n3, m1, m2 : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 7 :');
    WriteLn('# -----------');
    WriteLn('# Peut-on trouver un nombre non nul inférieur à 150 qui soit à la fois');
    WriteLn('# a. multiple de 11 et de 13 ?');
    WriteLn('# b. multiple de 11 et de 15 ?');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    n1 := 11; n2 := 13; n3 := 15;
    m1 := n1 * n2;
    m2 := n1 * n3;

    WriteLn('a.');
    WriteLn('Si un nombre est multiple à la fois de ', n1, ' et de ', n2, ' qui n''ont pas de diviseur commun');
    WriteLn('autre que 1, alors il est nécessairement multiple de leur produit ', m1, ' (', n1, ' x ', n2, ' = ', m1, ')');
    WriteLn('or ', m1, ' est inférieur à 150 il répond à la question. On peut trouver un nombre non nul');
    WriteLn('inférieur à 150 multiple à la fois de ', n1, ' et de ', n2, ', c''est ', m1, '.');
    WriteLn('b.');
    WriteLn('Si un nombre est multiple à la fois de ', n1, ' et de ', n3, ' qui n''ont pas de diviseur commun');
    WriteLn('autre que 1, alors il est nécessairement multiple de leur produit ', m2, ' (', n1, ' x ', n3, ' = ', m2, ')');
    WriteLn('or ', m2, ' est supérieur à 150, on ne peut donc pas trouver un nombre non nul inférieur à 150');
    WriteLn('multiple à la fois de ', n1, ' et de ', n3, '.');
end.

