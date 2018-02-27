program m0106a;

{$mode objfpc}{$H+}

uses
    method01, display, m0106unit;

var
    icm: TIntegersCommonMultiple;
    bool : Boolean;

begin
    icm := TIntegersCommonMultiple.Create(11, 17, 500, 800);
    icm.Wording();

    bool := DisplayMethodWording;
    if bool then PutAMethod();

    bool := PutUpCorrectVersion;
    if not bool then
        begin
            icm.Free;
            exit;
        end;

    icm.DisplayResult();
    icm.Free;
    
    {$IFDEF WINDOWS}
    ReadLn;
    {$ENDIF}
end.

