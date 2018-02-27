unit method03;

{$mode objfpc}{$H+}

interface

procedure PutAMethod();

implementation

procedure PutAMethod();
begin
    WriteLn('###################################################################################');
    WriteLn('# Méthode 3. Comment établir la liste des diviseurs d''un entier non nul ?');
    WriteLn('###################################################################################');
    WriteLn('# ▲ on commence la liste par 1 et on la termine par le nombre lui-même;');
    WriteLn('# ▲ on cherche ensuite si 2 est un diviseur du nombre, si ce n''est pas le cas,');
    WriteLn('# on passe à 3, si c''est le cas on calcule le nombre qui multiplié par 2 donne le');
    WriteLn('# nombre choisi, ce second facteur est aussi un diviseur;');
    WriteLn('# ▲ on cherche si 3 est un diviseur du nombre, si ce n''est pas le cas, on passe à 4,');
    WriteLn('# si c''est le cas on calcule le nombre qui multiplié par 3 donne le nombre choisi,');
    WriteLn('# ce second facteur est aussi un diviseur;');
    WriteLn('# ▲ on continue et on détermine ainsi les diviseurs dans l''ordre croissant à partir');
    WriteLn('# de 1 et dans l''ordre décroissant à partir du nombre, on s''arrête quand on arrive');
    WriteLn('# à un diviseur déjà trouvé.');
    WriteLn('# REMARQUE : le nombre de diviseurs d''un entier non nul est pair sauf si ce nombre');
    WriteLn('# est un carré parfait. Tout nombre non nul est un diviseur de 0.');
    WriteLn('###################################################################################');
    WriteLn();
end;

end.

