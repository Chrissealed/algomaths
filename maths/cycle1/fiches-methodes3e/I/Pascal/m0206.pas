program m0206;

{$mode objfpc}{$H+}

uses
    method02, display;

var
    boys, beds, bedrooms, remainder, empty_beds : Byte;
    bool : Boolean;

begin
    WriteLn('# Exercice 6.');
    WriteLn('# ----------');
    WriteLn('# Lors d''un voyage scolaire à Millau, on doit répartir 22 garçons dans des chambres');
    WriteLn('# à 4 lits. Combien faudra-t-il au minimum de chambres pour que chacun dispose d''un');
    WriteLn('# lit ?');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    boys := 22;
    beds := 4;
    bedrooms := boys div beds;
    remainder := boys mod beds;
    empty_beds := beds - remainder;
    WriteLn(boys, ' = ', beds, ' x ', bedrooms, ' + ', remainder, '.');
    if (remainder > 0) then
    begin
        WriteLn('Il faudra au minimum ', bedrooms + 1, ' chambres pour que chacun dispose d''un lit.');
        Write('Il restera ', empty_beds);
        if (empty_beds > 1) then
            Write(' lits inoccupés')
        else
            Write(' lit inoccupé');
        WriteLn(' dans l''une des chambres.');
    end
    else
        WriteLn('Il faudra exactement ', bedrooms, ' chambres pour répartir les ', boys, ' garçons.');

end.

