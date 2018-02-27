program m0205;

{$mode objfpc}{$H+}

uses
    method02, display;

var
    cards, players, q, remainder : Byte; 
    bool : Boolean;

begin
    WriteLn('# Exercice 5.');
    WriteLn('# ----------');
    WriteLn('# On distribue 52 cartes à jouer à trois personnes qui reçoivent chacune le même');
    WriteLn('# nombre de cartes. Combien de cartes recevra au maximum chaque personne ?');
    WriteLn('# Combien de cartes restera-t-il ?');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    cards := 52;
    players := 3;
    q := cards div players;
    remainder := cards mod players;
    WriteLn(cards, ' = ', players, ' x ', q, ' + ', remainder, '.');
    WriteLn('Chaque joueur se verra attribuer au maximum ', q, ' cartes.');
    Write('Il restera ', remainder);
    if (remainder > 1) then
        WriteLn(' cartes.')
    else
        WriteLn(' carte.');

end.

