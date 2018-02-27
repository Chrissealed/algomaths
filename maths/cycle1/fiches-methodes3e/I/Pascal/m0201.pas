program m0201;

{$mode objfpc}{$H+}

uses
    method02, display;

var
    d, q, r : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 1.');
    WriteLn('# ----------');
    WriteLn('# On effectue la division euclidienne d''un entier a par 7, on trouve 23 comme');
    WriteLn('# quotient.');
    WriteLn('# a. Quels sont les restes possibles ?');
    WriteLn('# b. Trouver toutes les valeurs de a.');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    WriteLn('D''après la définition de la division euclidienne on a :');
    WriteLn('a / 7 = 23 + r et r < 7. Le reste est strictement inférieur au diviseur 7');
    WriteLn('donc les restes possibles sont r = 0, 1, 2, 3, 4, 5 ou 6');
    WriteLn('');
    d := 7;
    q := 23;
    WriteLn('On calcule le dividende a pour tous les restes possibles :');
    r := 0;
    WriteLn('r = 0, alors a = ', q, ' x ', d, ' + ', r, ' d''où a = ', q*d);
    r := 1;
    WriteLn('r = 1, alors a = ', q, ' x ', d, ' + ', r, ' d''où a = ', q*d+r);
    r := 2;
    WriteLn('r = 2, alors a = ', q, ' x ', d, ' + ', r, ' d''où a = ', q*d+r);
    r := 3;
    WriteLn('r = 3, alors a = ', q, ' x ', d, ' + ', r, ' d''où a = ', q*d+r);
    r := 4;
    WriteLn('r = 4, alors a = ', q, ' x ', d, ' + ', r, ' d''où a = ', q*d+r);
    r := 5;
    WriteLn('r = 5, alors a = ', q, ' x ', d, ' + ', r, ' d''où a = ', q*d+r);
    r := 6;
    WriteLn('r = 6, alors a = ', q, ' x ', d, ' + ', r, ' d''où a = ', q*d+r);
end.

