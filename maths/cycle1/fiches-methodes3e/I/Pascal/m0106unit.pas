unit m0106unit;

{$mode objfpc}{$H+}

interface

type
    TIntegersCommonMultiple = Class
        FInteger1, FInteger2 : Integer;
        FMinimum, FMaximum : Integer;
        FIntn, FIntm : Integer;
        FBool : Boolean;

        constructor Create(anInteger1, anInteger2, aMin, aMax: Integer);
        procedure Wording();
        procedure DisplayResult();

        property Int1 : Integer read FInteger1;
        property Int2 : Integer read FInteger2;
        property Min : Integer read FMinimum;
        property Max : Integer read FMaximum;
    end;
    
implementation

procedure TIntegersCommonMultiple.Wording();
begin
    WriteLn('# Exercice 6 :');
    WriteLn('# -----------');
    WriteLn('# Trouver un nombre pair compris entre 500 et 800 qui soit multiple à la fois de');
    WriteLn('# 11 et de 17');
    WriteLn('-----------------------------------------------------------------------------------');
    WriteLn;
end;

procedure TIntegersCommonMultiple.DisplayResult();
var
    n1, n2 : Integer;
begin
    n1 := FMinimum div FInteger1;
    n2 := FMinimum div FInteger2;
    while (n1 * FInteger1 <= FMaximum) do
    begin
        FIntm := n1 * FInteger1;
        { Comparaison de tous les multiples de n2 avec ceux de n1 }
        while (n2 * FInteger2 <= FMaximum) do
        begin
            FIntn := n2 * FInteger2;
            if (FIntn = FIntm) then
            begin
                if (FIntm >= FMinimum) and (FIntn <= FMaximum) then
                begin
                    WriteLn('Le nombre ', FIntn, ' est multiple à la fois de ', FInteger1, ' et de ', FInteger2);
                    WriteLn('et est compris entre ', FMinimum, ' et ', FMaximum);
                end;
                if (FIntn mod 2 = 0) then
                    WriteLn('de plus ', FIntn, ' est un nombre pair.')
                else
                    WriteLn('mais ', FIntn, ' est un nombre impair.');
                { Quand un match est trouvé, continuer à la première boucle
                  au cas où plusieurs matchs seraient possibles }
                break;
            end;
            n2 += 1;
        end;
        n1 += 1;
        { Réinitialisation de n2 pour la boucle suivante }
        n2 := FMinimum div FInteger2;
    end;
end;

constructor TIntegersCommonMultiple.Create(anInteger1, anInteger2, aMin, aMax: Integer);
begin
    inherited Create;
    FInteger1 := anInteger1;
    FInteger2 := anInteger2;
    FMinimum := aMin;
    FMaximum := aMax;
end;

end.
