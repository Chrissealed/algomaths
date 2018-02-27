program m0104;

{$mode objfpc}{$H+}

uses
    method01, display;

var
    q1 : Integer = 4;
    q2 : Integer;
    bool : Boolean;

begin
    WriteLn('# Exercice 4 :');
    WriteLn('# -----------');
    WriteLn('# On donne un entier n. Donner deux multiples consécutifs de n.');
    WriteLn('-----------------------------------------------------------------------------------');
    WriteLn();

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then exit;

    q2 := q1 + 1;
    WriteLn(q1, ' x n et ', q2, ' x n sont deux multiples consécutifs de l''entier n.');
    WriteLn('Plus généralement, étant donné deux entiers non nuls q1 et q2');
    WriteLn('tels que q2 = q1 + 1, q1 x n et q2 x n sont deux multiples consécutifs de n.');

    {$IFDEF WINDOWS}
    ReadLn;
    {$ENDIF}
end.

