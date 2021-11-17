unit Delphi_Clean_Architecture.Dominio.Aluno.CPF;

interface

uses
  System.RegularExpressions,
  System.SysUtils;

type
  TCPF = class
  private
    FNumero: String;
  public
    constructor Create(aNumero : String);
    property Numero : String read FNumero write FNumero;
  end;

implementation

{ TCPF }

constructor TCPF.Create(aNumero: String);
begin
  if ((TRegEx.IsMatch(aNumero,'[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}-[0-9]{1,2}')) or
  (not aNumero.isEmpty)) then
    FNumero := aNumero;
end;

end.
