program m0103;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    q1 : Integer = 36 div 6;
    q2 : Integer = 42 div 6;
    q3 : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 3 :');
    WriteLn('# -----------');
    WriteLn('# a. 36 et 42 sont-ils des multiples consécutifs de 6 ?');
    WriteLn('# b. 42 et 56 sont-ils des multiples consécutifs de 7 ?');
    WriteLn('-----------------------------------------------------------------------------------');
    WriteLn();

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    if (q2 = q1 + 1) then
        begin
            WriteLn('36 et 42 sont des multiples consécutifs de 6 :');
            WriteLn('36 = 6 x ', q1);
            WriteLn('42 = 6 x ', q2);
        end
    else
        WriteLn('36 et 42 ne sont pas des multiples consécutifs de 6');

    q1 := 42 div 7;
    q2 := 56 div 7;
    if (q2 = q1 + 1) then
        begin
            WriteLn('42 et 56 sont des multiples consécutifs de 7 :');
            WriteLn('42 = 7 x ', q1);
            WriteLn('56 = 7 x ', q2);
        end
    else
        begin
            WriteLn('42 et 56 ne sont pas des multiples consécutifs de 7');
            WriteLn('en effet ', q1 * 7, ' = ', q1, ' x 7');
            WriteLn('et ', q2 * 7, ' = ', q2, ' x 7');
            WriteLn('or la différence entre ', q2, ' et ', q1, ' est ', q2 - q1);
            WriteLn('il existe donc un entier intermédiaire multiple de 7 :');
            q3 := q1 + 1;
            WriteLn(q3, ' x 7 = ', q3 * 7);
            WriteLn('et donc ', q1 * 7, ' < ', q3 * 7, ' < ', q2 * 7);
        end;

    {$IFDEF WINDOWS}
    ReadLn;
    {$ENDIF}
end.

