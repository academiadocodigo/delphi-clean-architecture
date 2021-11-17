unit Delphi_Clean_Architecture.Dominio.Aluno.Telefone;

interface

uses
  System.RegularExpressions,
  System.SysUtils;

type
  TTelefone = class
  private
    FDDD: String;
    FNumero: String;
  public
    constructor Create(DDD, Numero : String);
    property DDD : String read FDDD write FDDD;
    property Numero : String  read FNumero write FNumero;
  end;

implementation

{ TTelefone }

constructor TTelefone.Create(DDD, Numero: String);
begin
  if ((DDD.IsEmpty) or (Numero.IsEmpty)) then
    raise Exception.Create('DDD e o numero são obrigatórios');

  if (not TRegEx.IsMatch(DDD,'[0-9]{1,2}')) then
    raise Exception.Create('DDD invalido');

  if (not (TRegEx.IsMatch(Numero,'[0-9],{1,8}') or
        (TRegEx.IsMatch(Numero,'[0-9],{1,9}')))) then
    raise Exception.Create('Numero invalido');

  FDDD := DDD;
  FNumero := Numero;
end;

end.
