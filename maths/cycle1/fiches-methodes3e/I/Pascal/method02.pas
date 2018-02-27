unit method02;

{$mode objfpc}{$H+}

interface

procedure PutAMethod();

implementation

procedure PutAMethod();
begin
    WriteLn('###################################################################################');
    WriteLn('# Méthode 2. Comment utiliser la division euclidienne ?');
    WriteLn('###################################################################################');
    WriteLn('# Pour utiliser la division euclidienne :');
    WriteLn('# ▲ on s''appuie sur sa définition : a et b étant deux entiers naturels et b non nul,');
    WriteLn('# effectuer la division euclidienne de a par b, c''est trouver deux entiers naturels');
    WriteLn('# q et r tels que a = bq + r et r < b.');
    WriteLn('# a est le dividende, b le diviseur, q le quotient et r le reste.');
    WriteLn('###################################################################################');
    WriteLn();
end;

end.

