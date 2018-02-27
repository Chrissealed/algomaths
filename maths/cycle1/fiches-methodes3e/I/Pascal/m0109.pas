program m0109;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    n, m1, m2, m3, m4 : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 9 :');
    WriteLn('# -----------');
    WriteLn('# La somme de quatre multiples consécutifs de 6 est 228. Trouver ces nombres.');
    WriteLn('-----------------------------------------------------------------------------------');

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    WriteLn('Quatre multiples consécutifs de 6 peuvent s''écrire :');
    WriteLn('6 x (n-1), 6 x n, 6 x (n+1) et 6 x (n+2)');
    WriteLn('où n est un entier naturel > 0');
    WriteLn('6 x (n-1) + 6 x n + 6 x (n+1) + 6 x (n+2) = 6n - 6 + 6n + 6n + 6 + 6n + 12');
    WriteLn('ce qui revient à : 24n + 12');
    WriteLn('or 24n + 12 = 228 ce qui implique que 24n = 228 -12 = 216');
    n := 216 div 24;
    WriteLn('et donc que n = 216/24 = ', n, '.');
    WriteLn('Pour n = ', n, ',');
    Write('6 x ', n-1, ' + 6 x ', n, ' + 6 x ', n+1, ' + 6 x ', n+2, ' = ');
    WriteLn(6*(n-1) + 6*n + 6*(n+1) + 6*(n+2));
    WriteLn('donc les quatre multiples consécutifs de 6 dont la somme est égale à 228 sont :');
    m1 := 6*(n-1);
    m2 := 6*(n);
    m3 := 6*(n+1);
    m4 := 6*(n+2);
    WriteLn(m1, ', ', m2, ', ', m3, ', ', m4);
    WriteLn('On a bien ', m1, ' + ', m2, ' + ', m3, ' + ', m4, ' = ', m1+m2+m3+m4, '.');
end.

