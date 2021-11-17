unit Delphi_Clean_Architecture.Infra.Aluno.CifradorDeSenhaComMD5;

interface

uses
  IdHashMessageDigest,
  Delphi_Clean_Architecture.Dominio.Aluno.CifradroDeSenha;

type
  TCifradorDeSenhaComMD5 = class(TInterfacedObject, iCrifradorDeSenha)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iCrifradorDeSenha;
      function CifraSenha(aSenha : String) : String;
      function ValidarSenhaCifrada(aSenhaCifrada, aSenha: String) : Boolean;
  end;

implementation

function TCifradorDeSenhaComMD5.CifraSenha(aSenha: String): String;
var
  idmd5 : TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    result := idmd5.HashStringAsHex(aSenha);
  finally
    idmd5.Free;
  end;
end;

constructor TCifradorDeSenhaComMD5.Create;
begin

end;

destructor TCifradorDeSenhaComMD5.Destroy;
begin

  inherited;
end;

class function TCifradorDeSenhaComMD5.New : iCrifradorDeSenha;
begin
  Result := Self.Create;
end;

function TCifradorDeSenhaComMD5.ValidarSenhaCifrada(aSenhaCifrada,
  aSenha: String): Boolean;
begin
  result := (Self.CifraSenha(aSenhaCifrada) = Self.CifraSenha(aSenhaCifrada));
end;

end.
