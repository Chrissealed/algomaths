unit display;

{$mode objfpc}{$H+}

interface

function DisplayMethodWording(): Boolean;
function PutUpCorrectVersion(): Boolean;

implementation

function DisplayMethodWording(): Boolean;
var
    answer : String;
begin
    Write('Afficher la méthode ? O|n : ');
    ReadLn(answer);
    case (answer) of
    'n', 'N': Result := false;
    'o', 'O':
        begin
            WriteLn;
            Result := true;
        end;
    else
        Result := false;
    end;
end;

function PutUpCorrectVersion(): Boolean;
var
    answer : String;
begin
    Write('Afficher le corrigé ? O|n : ');
    ReadLn(answer);
    case (answer) of
    'n', 'N': Result := false;
    'o', 'O':
        begin
            WriteLn;
            Result := true;
        end;
    else
        Result := false;
    end;
end;

end.

