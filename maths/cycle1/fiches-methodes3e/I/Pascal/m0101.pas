program m0101;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    num : Integer = 180;
    divisor : Integer = 15;
    q, m, n : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 1 :');
    WriteLn('# -----------');
    WriteLn('# 180 et 260 sont-ils des multiples de 15 ?');
    WriteLn('-----------------------------------------------------------------------------------');
    WriteLn();

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    q := num div divisor; 
    WriteLn('Existe-t-il un entier q tel que 180 = 15q ?');

    if (num mod divisor = 0) then
        begin
            WriteLn(num, ' est divisible par ', divisor, ' :');
            WriteLn('il existe un entier q tel que ', divisor, ' x q = ', num, ' : ', q);
        end
    else
        WriteLn(num, ' n''est pas le produit de ', divisor, ' par un entier q');

    WriteLn;
    WriteLn('Existe-t-il un entier q tel que 260 = 15q ?');
    num := 260;
    q := num div divisor;
    m := divisor * q;
    n := divisor * (q + 1);
    if (num mod divisor = 0) then
        begin
            WriteLn(num, ' est divisible par ', divisor, ' :');
            WriteLn('il existe un entier q tel que ', divisor, ' x q = ', num, ' : ', q);
        end
    else
        begin
            WriteLn(num, ' n''est pas le produit de ', divisor, ' par un entier q');
            WriteLn(num, ' ÷ ', divisor, ' = ', q);
            WriteLn(divisor, ' x ', q, ' = ', m);
            WriteLn(divisor, ' x ', q+1, ' = ', n);
            WriteLn('or ', m, ' < ', num, ' < ', n);
            WriteLn('et comme ', q, ' et ', q+1, ' sont deux entiers consécutifs,');
            WriteLn('alors il n''existe pas d''entier q tel que ', num, ' = ', divisor, ' x q');
        end;

    {$IFDEF WINDOWS}
    ReadLn;
    {$ENDIF}
end.

