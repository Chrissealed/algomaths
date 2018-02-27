program m0105;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    m, n : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 5 :');
    WriteLn('# -----------');
    WriteLn('# Démontrer que la somme de trois multiples consécutifs de 5 est un multiple de 15.');
    WriteLn('-----------------------------------------------------------------------------------');
    WriteLn;

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    WriteLn('Trois multiples consécutifs de 5 s''écrivent :');
    WriteLn('5(n-1), 5n et 5(n+1) où n est un entier différent de 0');
    WriteLn('or 5(n-1) + 5n + 5(n+1) = 5n - 5 + 5n + 5n + 5 = 15n.');
    WriteLn('La somme de trois multiples consécutifs  de 5 peut donc s''écrire 15n,');
    WriteLn('produit de 15 par un entier.');
    WriteLn('La somme de trois multiples consécutifs de 5 est donc bien un multiple de 15.');
    WriteLn('Prenons un exemple :');
    m := 5*3 + 5*4 + 5*5;
    n := 4*15;
    WriteLn('5 x 3 + 5 x 4 + 5 x 5 = ', m);
    WriteLn('et 4 x 15 = ', n, '.');

    {$IFDEF WINDOWS}
    ReadLn;
    {$ENDIF}
end.

