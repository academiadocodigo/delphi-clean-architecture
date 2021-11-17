unit Delphi_Clean_Architecture.Dominio.Aluno.FabricaDeAluno;

interface

uses
  Delphi_Clean_Architecture.Dominio.Aluno.CPF,
  Delphi_Clean_Architecture.Dominio.Aluno.Email,
  Delphi_Clean_Architecture.Dominio.Aluno;

type
  TFabricaDeAluno = class
  private
    FAluno : TAluno;
  public
    function ComNomeCPFEmail(aNome, aCpf, aEmail: String) : TFabricaDeAluno;
    function ComTelefone(aDDD, aNUmero : String) : TFabricaDeAluno;
    function Criar : TAluno;
  end;

implementation

{ TFabricaDeAluno }

function TFabricaDeAluno.ComNomeCPFEmail(aNome, aCpf,
  aEmail: String): TFabricaDeAluno;
begin
  FAluno := TAluno.Create(TCPF.Create(acpf),aNome,TEmail.Create(aEmail));
  Result := Self;
end;

function TFabricaDeAluno.ComTelefone(aDDD, aNUmero: String): TFabricaDeAluno;
begin
  FAluno.AdicionarTelefone(addd,aNUmero);
  Result := Self;
end;

function TFabricaDeAluno.Criar: TAluno;
begin
  Result := FAluno;
end;

end.
