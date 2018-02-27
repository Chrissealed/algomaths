unit method01;

{$mode objfpc}{$H+}

interface

procedure PutAMethod();

implementation

procedure PutAMethod();
begin
    WriteLn('###################################################################################');
    WriteLn('# Méthode 1. Comment utiliser la notion de multiple d''un entier naturel ?');
    WriteLn('###################################################################################');
    WriteLn('# Pour utiliser la notion de multiple d''un entier naturel:');
    WriteLn('# ▲ on s''appuie sur la définition : a et b étant deux entiers naturels et b non nul');
    WriteLn('# on dit que a est un multiple de b s''il existe un entier q tel que a = bq.');
    WriteLn('# Remarque : 0 est multiple de tous les nombres.');
    WriteLn('###################################################################################');
    WriteLn();
end;

end.

