unit Delphi_Clean_Architecture.Dominio.Aluno.Email;

interface

uses
  System.RegularExpressions,
  System.SysUtils;

type
  TEmail = class
  private
    FEndereco: String;
  public
    constructor Create(aEndereco : String);
    property Endereco : String read FEndereco write FEndereco;
  end;

implementation

{ TEmail }

constructor TEmail.Create(aEndereco: String);
begin
  if ((aEndereco.IsEmpty) or
    (not TRegEx.IsMatch(aEndereco,'^([\w\-]+\.)*[\w\- ]+@([\w\- ]+\.)+([\w\-]{2,3})$'))) then
    raise Exception.Create('E-mail invalido');

  FEndereco := aEndereco;
end;

end.
