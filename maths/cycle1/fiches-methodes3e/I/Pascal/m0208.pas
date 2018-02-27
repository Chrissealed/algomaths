program m0208;

{$mode objfpc}{$H+}

uses
    method02, display;

var
    chocolates, caskets : Word;
    capacity, remainder : Byte;
    bool : Boolean;

begin
    WriteLn('# Exercice 8.');
    WriteLn('# ----------');
    WriteLn('# Un confiseur a pu réaliser 346 chocolats. Il veut les présenter pour la vente');
    WriteLn('# dans des coffrets de 16. Combien pourra-t-il remplir de coffrets ?');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    chocolates := 346;
    capacity := 16;
    caskets := chocolates div capacity;
    remainder := chocolates mod capacity;
    WriteLn(chocolates, ' = ', capacity, ' x ', caskets, ' + ', remainder, '.');
    WriteLn('Le confiseur pourra remplir ', caskets, ' coffrets.');
    Write('Il lui restera ', remainder);
    if (remainder > 1) then
        WriteLn(' chocolats.')
    else
        WriteLn(' chocolat.');
end.

