program m0207;

{$mode objfpc}{$H+}

uses
    method02, display;

var
    eggs, capacity, boxes, remainder : Byte;
    bool : Boolean;

begin
    WriteLn('# Exercice 7.');
    WriteLn('# ----------');
    WriteLn('# Une fermière a récolté 59 œufs. Pour les transporter au marché et les vendre,');
    WriteLn('# elle les range dans des boîtes de 12. Combien lui faudra-t-il de boîtes ?');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    eggs := 59;
    capacity := 12;
    boxes := eggs div capacity;
    remainder := eggs mod capacity;

    WriteLn(eggs, ' = ', capacity, ' x ', boxes, ' + ', remainder, '.');
    if (remainder > 0) then
    begin
        WriteLn('Il faudra ', boxes + 1, ' boîtes à la fermière pour ranger ses œufs.');
        Write('La dernière boîte contiendra ', remainder);
        if (remainder > 1) then
            WriteLn(' œufs.')
        else
            WriteLn(' œuf.');
    end
    else
        WriteLn('Les œufs seront contenus exactement dans ', boxes, ' boîtes.');

end.

