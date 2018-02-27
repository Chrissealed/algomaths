program m0107a;

{$mode objfpc}{$H+}

uses
    method01, display, m0107unit;

var
    method : Tm0107;
    bool : Boolean;

begin
    method := Tm0107.Create();
    method.Wording();

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then
        begin
            method.Free;
            exit;
        end;

    method.DisplayResult();
    method.Free;
    
    {$IFDEF WINDOWS}
    ReadLn;
    {$ENDIF}
end.

