program m0102;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    q : Integer = 300 div 53;
    m : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 2 :');
    WriteLn('# -----------');
    WriteLn('# Trouver les multiples de 53 compris entre 300 et 500.');
    WriteLn('-----------------------------------------------------------------------------------');
    WriteLn();

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    m := q * 53;
    WriteLn('Le produit de ', q, ' par 53 = ', m);
    WriteLn('Les multiples de 53 compris entre 300 et 500 sont :');
    q += 1;
    m := q * 53;
    repeat
        WriteLn(q, ' x 53 = ', m);
        q += 1;
        m := q * 53;
    until (m >= 500);

    {$IFDEF WINDOWS}
    ReadLn;
    {$ENDIF}
end.

